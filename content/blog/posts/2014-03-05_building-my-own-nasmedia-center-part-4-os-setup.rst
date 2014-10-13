Building my own NAS/Media center - Part 4 - OS setup
####################################################
:author: Stefano
:category: Hardware, Ubuntu
:tags: center, media, nas

As soon as I plugged the NAS to the electric socket, something was
fishy. Apparently it starts up without any signal from the power button.
The only way to turn it off is to use the PSU. This is worth more
investigation, but for now I will move on to set up the BIOS and
installing Ubuntu.

Downloading Ubuntu
------------------

I downloaded the Ubuntu 12.04 LTS ISO image from the website. Nothing
peculiar here, except for the fact that I need to install from USB key,
as I don't have a CD reader. I followed `the instructions from the
Ubuntu
website <http://www.ubuntu.com/download/desktop/create-a-usb-stick-on-mac-osx>`_
and obtained a USB memory stick which I plugged into the USB port of the
NAS.

First light and BIOS setup
--------------------------

It was a nice surprise to see that, once I started the NAS and turned on
the monitor, Ubuntu was already booting. Apparently the BIOS is already
configured to boot from USB stick, which is a plus, but I think it
deserves some tinkering just because of the nature of the project. Also,
I want to see if the CPU temperature is appropriate. I might have had
some troubles due to the difficult seating of the pins.

Apparently, the CPU temperature is a bit weird. It keeps rising from 52
C to a stable 55 C. The CPU fan has four pins, so it's adaptive and can
be controlled via the BIOS. I tinkered the BIOS values to make it work
more, and see how the temperature changes with time, but I didn't get
any appreciable difference in the fan speed. The CPU fan is working at
1000 RPM, and the system fan at 4000. I discovered later on that while
in the BIOS, the CPU never enters low-power mode, so it's normal for the
temperature to increase.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3108.jpg
   :alt: image
   :width: 400px
   :align: center

Nevertheless, I might have to monitor the situation. According to the
Intel website, the `maximum temperature (Tcase) for the Core i3 is 69.1
C <http://ark.intel.com/products/53422/Intel-Core-i3-2100-Processor-(3M-Cache-3_10-GHz)>`_.
The `conductive paste has a break-in
period <http://www.arcticsilver.com/as5.htm>`_, which should lower the
temperature of 2-5 C. This might be the reason why I have readings that
are higher than what I feel comfortable with. For now, the temperature
is not above the limit and I can try to install a basic Ubuntu.

A quick note on noise. The PSU and the processor fans are extremely
silent. The GPU fan is instead quite loud in the high-pitch range.
Putting the lid on the case doesn't really solve. I'll address this
problem later.

Installing Ubuntu
-----------------

The system boots naturally from the USB key. I am impressed at the ease
of installation of Ubuntu. Literally 3 clicks and the system is
installed. I didn't bother doing excessive configuration of the
partitions, I just let the installer choose for me. The 160 GB disk is
probably oversized for the task of keeping the system, and I might
consider replacing it with a small SSD or even a plain USB key. I don't
expect a lot of stuff to go on the system partition. The bulk of the
space will be provided by the additional hard drives.

After the installation completed, I rechecked the BIOS CPU temperature
monitor, which is now at 48 degrees, again increasing. As I said,
staying in the BIOS makes the CPU work hard, thus the increase in
temperature. I tried monitor the CPU from the system, and it stays
rather cool, in the 30 C range. This implies that my setup is apparently
fine.

Troubles with Nvidia and Intel HD cards
---------------------------------------

The nvidia drivers introduced some trouble. I installed the
nvidia-current from the software center, but even after reboot I didn't
have a GLX display. I tried running nvidia-xconfig, but it trashed the X
window config file. After rebooting, I was left in text mode. I
struggled with the problem for a while, until I found a (partial)
solution.

The first thing to note is that there are two graphic cards available:
the Nvidia (called PEG in the BIOS) and the integrated Intel (called
IGD). On Linux, using the command lspci -vv reported two entries with
VGA capabilities. The idea at the hardware level is that the Intel is a
low-consumption graphic card. When it needs accelerated rendering, it
delegates it to the nvidia card and multiplexes the data. This is called
hybrid graphics, and it's not supported fully by Linux (the usual
drill). Some `efforts are being made, but they are not for the faint of
heart <http://eternalvoid.net/tutorials/linux-optimus-gt650m/>`_ or
those who just want something that works (you know, like on the Mac).

Long story short, as Linux can't use the hybrid mechanism, you have to
choose, and the presence of two cards makes trouble, because by default,
Linux might use the integrated Intel. Some `options are
possible <https://help.ubuntu.com/community/HybridGraphics>`_, namely to
use `vga\_switcheroo <http://asusm51ta-with-linux.blogspot.dk/>`_, but
it works only if you use the nouveau driver (an opensource
implementation of the nvidia drivers). I wanted to use the closed source
nvidia ones, making this solution not feasible. As far as I've been
told, the opensource drivers are still too radioactive to be worth of
consideration.

The second point is that there are four sockets for video on the board.
two DVI, one DisplayPort, and one HDMI. `One DVI (the top one) and the
DisplayPort are connected to the Nvidia
card <http://www.zotacusa.com/forum/topic/5254-things-not-advertised-on-the-z68-wifi-supreme/page__p__16803__hl__%2Blinux+%2Bnvidia__fromsearch__1#entry16803>`_.
The remaining DVI and the HDMI are connected to the Intel. When I
started the system the first time, I plugged in the DVI, but then I
realized there was no sound. I thought DVI didn't carry the sound signal
(wrongly), so I connected the HDMI to the monitor (my TV).
Unfortunately, this meant that X windows always ran on the Intel, making
all efforts to use the Nvidia drivers fruitless (GLX not available when
running an OpenGL program, nothing available under the nvidia-settings
program, and so on).

To solve, I "switched off" the Intel graphics chip. `You can't
technically turn off the integrated
Intel <http://www.zotacusa.com/forum/topic/4850-z68itx-b-e-and-z68itx-a-e/>`_,
but the way I did is the best you can do to make it irrelevant to Linux.
From the BIOS `as suggested
here <http://forums.overclockers.co.uk/showthread.php?t=17983705>`_ I
chose option Initiate Graphic adapter, selected PEG/PCIEx, instead of
PEG/IGD. Additionally, I connected the second DVI port (the nvidia one)
to the monitor via a DVI-HDMI adapter cable. Apparently, this works:
lspci now reports only one VGA card, the nvidia, and the drivers now
install and work correctly. glxgears runs accelerated at 60 frames per
second. I found suggestions to blacklist the driver as an additional
line of defense, but as far as lspci tells me, I am running full nvidia
now. For additional reference, here is `another ubuntu
page <https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia>`_ that
might address additional problem someone google visitor may face.

Unfortunately, I don't get any sound, and I assumed it was because DVI
does not carry sound information. There's plenty of useful information
on the topic of audio `on this
forum <http://www.gossamer-threads.com/lists/mythtv/users/498261>`_,
where it says that it's technically possible to have audio out of the
(Nvidia) DisplayPort with a DP->HDMI cable. If you want to know more
about DVI, I suggest `this excellent article from
tomshardware <http://www.tomshardware.com/reviews/tft-connection,931.html>`_.
I thought about feeding sound with a proper cable DVI+Audio Out -> HDMI,
when I realized I was probably using a different output. I changed it in
the Ubuntu system configuration and I am now getting audio.

I have two problems left, one minor, one major: the first, minor one is
that the noise of the GPU fan is extremely annoying; the second, major
one is that I can't log out. If I do, the system hangs. I'll address
these two problems one after another.

Changing Fan behavior from the BIOS
-----------------------------------

To make the fans more silent, I simply changed the appropriate values
for temperature startup and running speed in the BIOS. I settled for a
maximum 80% fan speed (the "fan duty" value). This reduces the noise
considerably, while keeping the temperature within an acceptable
maximum.

Problems with lightdm at logout
-------------------------------

Solving this problem was much harder: I quickly realized I could not
perform a sane logout once I started using the nvidia card. When I got
out of the X session, instead of going back to lightdm, I got a `strange
garbled text-only display
instead <http://askubuntu.com/questions/285070/logging-out-leaves-the-display-in-a-garbled-state-unable-to-restart-x-or-switc>`_.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3128.jpg
   :alt: image
   :width: 400px
   :align: center

I followed the advice from user jazztickets, and tried various proposed
solutions in the ubuntu forums, such as `adding an entry for udev to
lightdm
configuration <https://bugs.launchpad.net/ubuntu/+source/lightdm/+bug/1066410/comments/44>`_,
checking `other users in similar
conditions <http://askubuntu.com/questions/124636/restarting-lightdm-after-running-nvidia-xconfig-results-in-unresponsive-text-onl>`_,
`dropping lightdm for gdm in the hope that it was a lightdm
issue <http://www.webupd8.org/2011/07/how-to-switch-between-gdm-lightdm-or.html>`_,
adding a sleep 5 just before the exec lightdm in /etc/init/lightdm.conf,
and also putting DEVPATH=\*card0 instead of card0 in the "start on"
entry of the same file. None of these worked.

After plenty of reboots and no clear clue, I managed somehow to stop the
X server, get the garbled text, and get access to the text consoles,
something that was not possible before. Magic, or chance, I'll never
know. In any case, I noted that I could not restart X manually due to
the following error

.. code-block:: text

    NVIDIA: could not open the device file /dev/nvidia (Input/output error)

That gave me a hint. I tried to `add vmalloc=256M in
grub <http://ubuntuforums.org/showthread.php?t=1681696>`_. Didn't work,
and I then found it's only for 32 bit machines anyway. I also tried to
`remove xorg.conf and recreate
it <http://ubuntuforums.org/showthread.php?t=1870711>`_. No luck.

I started reinstalling Ubuntu again and again, trying different options.
It took me 3 days and a lot of googling, but I finally found the
sequence of events that works, which will be the subject of the next
post.

Formatting and encrypting the big hard drive
--------------------------------------------

The 3 terabyte big hard drive is correctly seen at boot and the entry is
present in dmesg

.. code-block:: text

    [ 2.402539] scsi 1:0:0:0: Direct-Access ATA WDC WD30EZRX-00M 80.0 PQ: 0 ANSI: 5
    [ 2.402606] sd 1:0:0:0: Attached scsi generic sg1 type 0
    [ 2.402621] sd 1:0:0:0: [sdb] 5860533168 512-byte logical blocks: (3.00 TB/2.72 TiB)

In order to partition and format it, I had to use parted, since fdisk
apparently does not support disks so big. `I found this post extremely
useful <http://amaras-tech.co.uk/article/158/Ubuntu,_formatting_a_3TB_drive>`_
and I will give here just the essence of the operation

.. code-block:: text

    (parted) mklabel gpt
    Warning: The existing disk label on /dev/sdb will be destroyed and all data on
    this disk will be lost. Do you want to continue?
    Yes/No? yes
    (parted) unit TB
    (parted) mkpart primary 0.00TB 3.00TB
    (parted) print
    Model: ATA WDC WD30EZRX-00M (scsi)
    Disk /dev/sdb: 3.00TB
    Sector size (logical/physical): 512B/4096B
    Partition Table: gpt

    Number Start End Size File system Name Flags
    1 0.00TB 3.00TB 3.00TB primary

Now that I have a partition, it is time to bring truecrypt to work. I
want to encrypt my disk for security. In case of theft, my data would be
easily accessible, and I don't really like this. I will use truecrypt to
encrypt the whole partition, then mount it manually when needed by
typing in the password. Although it appears to be a bit annoying, it
will be done only once the computer boots up. I plan to keep it asleep
when I'm not using it, and this should not compromise the truecrypt
mount. If the computer gets stolen, it must necessarily be unplugged,
and the data won't be accessible later on.

Once again, `another blogger provides me an easy (though outdated) guide
to achieve my
goal <http://randomcryptography.blogspot.dk/2009/03/truecrypt-and-ext4-full-disk-on-ubuntu.html>`_.
Truecrypt is easily installed from the website. The downloadable .tar.gz
package extracts to an executable script that can be run and performs
installation graphically. After the installation is completed, I had a
"truecrypt" application in my application menu. Then I created the
encrypted partition with

.. code-block:: text

    truecrypt -t -c /dev/sdb1

and answered the questions. I chose my preferred encryption and hash
method, my password, and ext4 as a partition. The operation worked
through the night.

Unfortunately, in the morning I got a 100% completion but also a I/O
error. Being the disk new, I started being worried of a potential faulty
drive. I checked the kernel logs with dmesg and got plenty of messages
of this kind

.. code-block:: text

    [168480.771645] sd 1:0:0:0: [sdb] Unhandled error code
    [168480.771647] sd 1:0:0:0: [sdb]  
    [168480.771647] Result: hostbyte=DID_BAD_TARGET driverbyte=DRIVER_OK
    [168480.771648] sd 1:0:0:0: [sdb] CDB: 
    [168480.771649] Read(10): 28 00 c1 cf 57 d8 00 00 08 00
    [168480.771653] end_request: I/O error, dev sdb, sector 3251591128

bad news. I ran badblocks, but that turned out to be a very bad idea.
The program ran for 9 hours with CPU at max power, getting only to 50%
of the task, and I got my other hard drive filled with kernel error
messages. I was able to recover the situation by killing the process on
a dying system, and freeing some space. I am not convinced it's a
hardware issue, and before returning it, I decided to do some
investigation.

My first suspect is temperature. While the process gets pretty hot
(maximum 70 degrees, operative around 65) despite the big fan, the WD
drive was rather cool, so I'd exclude temperature as a potential
troublemaker.

The second suspect is power supply. Is 350 W enough? I both `asked on
superuser <http://superuser.com/questions/604642/how-do-i-know-if-my-hard-drive-has-enough-power>`_,
and checked on the `eXtreme power supply
calculator <http://www.extreme.outervision.com/PSUEngine>`_. For my
configuration, around 170 W should be enough. I have plenty of wiggle
room when it comes to power, and other components would fail if power
were an issue.

At this point, I decided to install gsmartcontrol, and run the SMART
diagnostics. Right after the incident, the drive was "Unknown". After
the reboot, it is correctly detected. All tests are successful. What
gives, then?

I decided to do nothing and ignore the error. I have the suspicion the
problem is a kernel issue, and if it doesn't bother me in ordinary use,
I won't really care. What I did was to set the driver on the SATA II
channel (instead of the SATA III), change the cable, and simply do a
quick truecrypt creation with

.. code-block:: text

    truecrypt -t -c --quick /dev/sdb1

This prevents encryption of the free space. I am not that paranoid. The
result is that the filesystem is created and formatted instantly, and I
can successfully mount it with

.. code-block:: text

    truecrypt /dev/sdb1 /media/test

I decided to trim down the reserved space for root to 1%, since this is
not a boot disk

.. code-block:: text

    sudo tune2fs -m 1 /dev/mapper/truecrypt1

And finally, I have an encrypted filesystem on a really, really big
disk.

.. code-block:: text

    Filesystem              Size  Used Avail Use% Mounted on
    /dev/mapper/truecrypt1  2.7T  201M  2.7T   1% /media/test

I also set the scheduler from "deadline" (the default) to "noop" first
and "cfq" later. I had a lot of problems rsyncing a large external hard
drive to the NAS. The whole computer froze, sshd dropped connections,
and the processor temperature started raising. I simply did

.. code-block:: text

    echo "noop" >/sys/block/sdb/queue/scheduler

and the problems stopped, although I am not sure the scheduler was the
real source of it.

I confirm that both temperature and the disk are acceptable and working.
I stressed both the disk and the processor for hours, filling it
completely with random generated data. No problems at all, so I start to
cast some personal doubts over the "deadline" scheduler, at least with
my current setup.

