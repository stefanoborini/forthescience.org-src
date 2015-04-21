Installing ubuntu 14.04 on the new Dell XPS 13 (update)
#######################################################
:author: Hans
:category: linux
:tags: XPS13, hardware

**This is a guest post from my friend Hans**

My `previous post <http://forthescience.org/blog/2015/03/20/installing_ubuntu_14_04_on_the_new_dell_xps_13/>`_
on the XPS 13 explained how to install ubuntu 14.04 with a modified version of 
the 4.0 rc4 kernel. This post will guide you through the same steps for the now 
released 4.0 kernel.
For background info on the XPS 13, and the links to the sources of some of the
technical stuff in this post, see my `previous post <http://forthescience.org/blog/2015/03/20/installing_ubuntu_14_04_on_the_new_dell_xps_13/>`_
on the XPS 13. 

Since my previous post, Dell released the official developers edition of the
XPS 13, which ships with ubuntu 14.04 (and it is ~70€ cheaper for the same
hardware!). Dell also released two new BIOS revisions, which solve some of the
audio issues.

If you followed the steps in my previous post, you should update
the bios to A03 (or higher), and then skip to the section "Getting stuff working with a newer kernel"

Updating BIOS and creating a restore disk
-----------------------------------------

We start by updating the BIOS to version A01 (or higher). Boot into Windows, go
to the `Dell Support website for the XPS 13 9343 <http://www.dell.com/support/home/us/en/04/product-support/product/xps-13-9343-laptop/drivers>`_
and download the bios update. Install the BIOS update, and reboot the machine.
You should now create a "self-starting backup disk" with the "Dell Backup and
Recovery" program. You can find this on the right side of the start menu. It 
requires an 8 GB usb thumbdrive (or larger), and will be very useful if you
ever need to restore the Windows installation on the machine. 

Installing Ubuntu 14.04 (and getting the broadcom wifi online)
--------------------------------------------------------------

I do not want to go into too much detail here. Download the 14.04 LTS release
from the `ubuntu website <http://www.ubuntu.com/download/desktop/>`_, and create
a bootable USB drive from the iso file. You can do this with the "Startup Disk
creator" utility on another ubuntu machine, or with the `UNetbootin utility <http://sourceforge.net/projects/unetbootin/>`_.
I would like to point out that installing ubuntu is not difficult, but the XPS
13 is currently not well supported by the default installation and thus should
not be your first linux installation ever.

After creating the USB drive you need to find a way to get an internet 
connection on the XPS 13 after installing ubuntu:

   - Get a USB wifi/ethernet dongle that you know to be working out of the box on linux
   - Replace the wifi board inside of the XPS (hardcore solution, not advised)
   - download and copy the needed packages onto the USB drive and manually install them after booting. The needed packages are: `bcmwl-kernel-source <https://launchpad.net/ubuntu/trusty/amd64/bcmwl-kernel-source>`_ `dkms <https://launchpad.net/ubuntu/trusty/amd64/dkms>`_ `fakeroot <https://launchpad.net/ubuntu/trusty/amd64/fakeroot>`_ `libfakeroot <https://launchpad.net/ubuntu/trusty/amd64/libfakeroot>`_.

Next you will need to reboot the machine, and press F12 multiple times when the
Dell logo shows, until you see a yellow text appearing in the top-right corner.
Select your USB drive in the Boot mode menu and press enter. In the next menu
(GNU GRUB) pick the top item (Try Ubuntu without installing) and press enter.
If your USB drive is not showing in the boot menu options, you will have to
disable "Secure boot" in the BIOS setup. 

After Ubuntu is finshed booting, you will need to get an internet connection.
Plug in your USB dongle or open a terminal window (CTRL+ALT+T) to install the 
downloaded packages. Enter the following commands to install the wifi driver

.. code-block:: console

   cd /cd-rom
   sudo dpkg -i libfakeroot*.deb
   sudo dpkg -i fakeroot*.deb
   sudo dpkg -i dkms*.deb
   sudo dpkg -i bcmwl-kernel-source*.deb

After these commands you should be able to connect to your wifi network.

Now start GParted partition editor from the applications (press the Windows
key and type gparted). Resize the windows partition to create some space for
the ubuntu installation. (I advise against a full wipe at this point. If Dell
releases firmware or BIOS updates you will most likely need Windows to install them)
Apply the changes, close GParted and start the installer. Follow the setup, 
and select "Something else" when you get to "Installation type".

You can create a single Ext4 partition with mount point "/", have a separate 
home partition, and/or create a swap partition. I will use swap with one
big partition for root (/) and home.
Select "free space" at the bottom of the list, and click the + button.
In the "Create partition" window, pick a size for your swap partition (4096 or 8192 MB),
set the location to "end of this space" and pick Use as: "swap area". Hit OK.
Select the "free space" again, and click the + button. Set Mount point to "/".
Hit OK.
Click on "Install Now" to proceed, and finish the installation.

Reboot the machine, and fix the internet connection again. If you have a USB
dongle plugged in you can open a terminal and type

.. code-block:: console

   sudo apt-get install bcmwl-kernel-source

Press Y and enter when asked if you want to proceed.

If you downloaded the packages onto the USB drive, open the file browser
and copy the 4 packages to the Downloads folder in your home directory.
Open a terminal and type

.. code-block:: console

   cd Downloads
   sudo dpkg -i libfakeroot*.deb
   sudo dpkg -i fakeroot*.deb
   sudo dpkg -i dkms*.deb
   sudo dpkg -i bcmwl-kernel-source*.deb

You should now be able to use the wifi menu to connect to your wireless
network!

Update the machine (use the software updater from the dash).
Most things should be working now, because the 3.13 kernel that comes with
Ubuntu 14.04 puts the touchpad, keyboard and sound card in PS2 mode. However,
if you upgrade your kernel to a newer version the hardware will try to switch
to I2C mode, which improves battery life and some other things (see Major's
blog for some details).

Getting stuff working with a newer kernel
-----------------------------------------

Installing a newer kernel will allow us to switch the touchpad and keyboard
to I2C mode. This improves usability and battery life on the laptop. 
My previous guide also switched the sound card to I2C mode, but I can only
recommend this if you regularly switch back to Windows. The audio board needs
a reboot followed by a cold boot to properly switch between I2C (Windows) and
HDA (standard linux) mode. If this is a big problem, you can modify the kernel
(set the ACPI_CA_SUPPORT_LEVEL to 2 in include/acpi/acconfig.h) before compiling
it to put the audio board in I2C mode on linux. If you plan to mostly use linux 
on the laptop, it is better to keep the sound card in HDA mode.

We will start with compiling the new 4.0 kernel, with some patches to it. 
The patches will fix headphone detection and the microphone. We will also need 
the latest linux-firmware, some aditional packages to build the kernel, and a 
.config file. Open a terminal and enter the following commands

.. code-block:: console

   sudo apt-get install git build-essential kernel-package fakeroot libncurses5-dev dh-modaliases debhelper devscripts
   cd $HOME
   git clone https://github.com/torvalds/linux.git
   git clone git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
   cp -a linux-firmware/intel linux/firmware/intel
   wget http://forthescience.org/blog/wp-content/uploads/2015/04/linux-kernel_4.0-xps13-audio_headsetplug.patch -O audio_headsetplug.patch
   cd linux
   git checkout v4.0
   patch -p1 < ../audio_headsetplug.patch
   wget http://forthescience.org/blog/wp-content/uploads/2015/04/linux-kernel_4.0-config-ubu1404-xps13 -O .config
   make oldconfig
   make clean
   make -j 4 deb-pkg LOCALVERSION=-xps13

This last command compiles the linux kernel, and after compilation creates
installation packages. Kernel compilation takes quite a bit of time, so
make some coffee or tea and patiently wait for it to finish. When the
compilation is done you wil end up with 5 .deb images in your home folder.
Enter the following commands in the terminal window to install them

.. code-block:: console

   cd $HOME
   sudo dpkg -i linux-headers-4.0.0-xps13_*.deb
   sudo dpkg -i linux-image-4.0.0-xps13_*.deb
   sudo dpkg -i linux-firmware-image-4.0.0-xps13_*.deb
   cd /lib
   sudo mv firmware firmware-old
   sudo cp -r $HOME/linux-firmware firmware

Congratulations! You just compiled and installed the linux kernel! But
wait... something broke...

.. code-block:: console

   koekie@XPS13:~$ sudo dpkg -i linux-image-4.0.0-xps13_4.0.0-xps13-1_amd64.deb 
   Selecting previously unselected package linux-image-4.0.0-xps13.
   (Reading database ... 215546 files and directories currently installed.)
   Preparing to unpack linux-image-4.0.0-xps13_4.0.0-xps13-1_amd64.deb ...
   Unpacking linux-image-4.0.0-xps13 (4.0.0-xps13-1) ...
   Setting up linux-image-4.0.0-xps13 (4.0.0-xps13-1) ...
   ERROR (dkms apport): kernel package linux-headers-4.0.0-xps13 is not supported
   Error! Bad return status for module build on kernel: 4.0.0-xps13 (x86_64)
   Consult /var/lib/dkms/bcmwl/6.30.223.248+bdcom/build/make.log for more information.

The wifi driver fails to compile a kernel module for the 4.0 kernel. to
fix this we will need to check out the source of the bcmwl-kernel-source
package, apply a patch, package it and then install it. You can find the
patch in `comment #4 of this bug report <https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1424676>`_.
Start a terminal and type the following commands

.. code-block:: console

   cd $HOME
   mkdir broadcomwifi
   cd broadcomwifi
   apt-get source bcmwl-kernel-source
   wget https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1424676/+attachment/4327652/+files/0017-add-support-for-Linux-4.0.patch
   cd bcmwl-6.30.223.248+bdcom/src
   patch -p1 < $HOME/broadcomwifi/0017-add-support-for-Linux-4.0.patch
   cd $HOME/broadcomwifi/bcmwl-6.30.223.248+bdcom
   debchange --increment "patched the package for kernel 4.0 compatibility"
   dpkg-buildpackage
   cd ..
   sudo dpkg -i bcmwl-kernel-source_6.30.223.248+bdcom-0ubuntu0.2_amd64.deb

Now you will need to do 2 restarts, and one cold boot (shutdown the machine, and power it back on).

The audio board should now be detected. You can open the sound settings from the small
speaker in the top-right corner, it should list "Speakers" on the output tab.
Switch to the input tab to check if that also lists the "Internal Microphone".
Open a new terminal window and start alsamixer if you don't hear any sounds or 
don't have a working microphone. Press F6, select the "HDA Intel PCH" device, increase
the volume sliders and unmute "Master", "Headphone" and "Speaker".

If you changed the kernel to put the sound card in I2C mode, then see my 
`previous post <http://forthescience.org/blog/2015/03/20/installing_ubuntu_14_04_on_the_new_dell_xps_13/>`_ for the settings needed in the alsamixer.

You might have noticed that the bluetooth is in a weird state, it shows as working
and sometimes manages to detect devices, but it doesn't work properly. Shawn Tan `posted <http://tech.sybreon.com/2015/03/15/xps13-9343-ubuntu-linux/>`_
a way to fix this. Download the Windows drivers from `Microsoft <http://catalog.update.microsoft.com/v7/site/ScopedViewRedirect.aspx?updateid=87a7756f-1451-45da-ba8a-55f8aa29dfee>`_,
open a terminal and run the following commands

.. code-block:: console

   sudo apt-get install cabextract
   cd $HOME/Downloads
   git clone https://github.com/jessesung/hex2hcd.git
   cd hex2hcd
   make
   cd ..
   mkdir btcab
   cd btcab
   cabextract ../20662520_6c535fbfa9dca0d07ab069e8918896086e2af0a7.cab
   ../hex2hcd/hex2hcd BCM20702A1_001.002.014.1443.1572.hex ../BCM20702A0-0a5c-216f.hcd
   cd ..
   sudo cp BCM20702A0-0a5c-216f.hcd /lib/firmware/brcm

After a reboot your bluetooth should now be working.

Some other tweaks
-----------------

I prefer my bluetooth to be off by default. Open a terminal window, and edit 
/etc/rc.local to add "rfkill block bluetooth" before the last line. Open a terminal and enter

.. code-block:: console

   sudo sed -i -e 's/^exit\ 0$/rfkill\ block\ bluetooth\nexit\ 0/' /etc/rc.local

We can also improve the behaviour of the touchpad a bit, by enabling the
"clickpad" setting. Open the dash and start "Startup Applications". Click add,
set name to "Synaptics clickpad setting", command to "synclient ClickPad=1"
(without the quotes of course), and click Add.

You should also check if your touchpad is only using the I2C bus, and not ps2 mode.
Start up a terminal and enter

.. code-block:: console

  xinput

The Virtual core pointer should have only two items:

   - Virtual core XTEST pointer
   - DLL0665:01 06CB:76AD UNKNOWN

if it lists a third item with PS2 touchpad in the name, you should blacklist
the psmouse module. Open a terminal and enter

.. code-block:: console

   echo -e "\n# remove psmouse because we want the mouse to work over I2C bus\nblacklist psmouse" | sudo tee -a /etc/modprobe.d/blacklist.conf
   sudo update-initramfs -u

Reboot the machine to make the touchpad change.

We have an awesome laptop with big battery, so let's make some changes to optimize
battery lifetime. Open a terminal and enter the following commands

.. code-block:: console

   cd /etc/pm/power.d/
   sudo wget http://forthescience.org/blog/wp-content/uploads/2015/03/powersaverXPS13Trusty -O powersaverXPS13Trusty

With the powersaving script in place (plug and unplug the adapter to activate it), the 
FullHD XPS 13 does more than 10h on a single charge with a light workload 
(firefox, some terminals and a text editor). I'm currently writing this guide at 
64% battery, with a predicted 7h09 remaining ;-)

Enjoy your XPS 13!
