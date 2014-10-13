Building my own NAS/Media center - Part 6 - NAS Software, WakeOnLAN
###################################################################
:date: 2014-05-05 22:52
:author: Stefano
:category: Hardware, Linux, MacOSX
:tags: center, hacking, media, nas
:slug: building-my-own-nasmedia-center-part-6-nas-software-wakeonlan

At the moment, I have a stable system and I can start installing the
stuff I need. So let's start.

NFS, SMB, SSHFS, AFP?
---------------------

The main role of the NAS is to be a NAS, obviously, and this means being
accessible from my laptop for storage. With this, comes the choice of
which service/protocol to use among NFS (mostly used in the Unix world),
SMB (windows), and AFP (Apple), and other less common alternatives, such
as SSHFS and iSCSI. The choice is not necessarily exclusive: the same
files or directories can be exported through all or some of these
channels simultaneously, but staying simple, which one should I use?

I am a Mac user, and I am looking for a solution that is satisfying for
both Linux (as a server) and Mac (as a client). I also have a Windows
laptop, so it might put an additional requirement. Mac technically
supports both NFS and SMB protocols, although its native protocol is
AFP. When it comes to performance, `NFS is the
winner <http://superuser.com/a/410519/2273>`_. `SMB is slower, and can't
take advantage of
multithreading <http://forums.freenas.org/showthread.php?9591-Samba-or-NFS&s=3495138ff185c54fa9649cf2f9c3dabd&p=42225&viewfull=1#post42225>`_,
but in all fairness I don't really care too much. Another option is
SSHFS, which is basically a sftp made filesystem. All the traffic is
encrypted and it's relatively straightfoward to setup. Finally, there's
also iSCSI, something I may try out later, but unfortunately iSCSI is
not supported by Mac, unless you use `this iSCSI initiator
software <http://www.studionetworksolutions.com/globalsan-iscsi-initiator/>`_.
A bit pricey, but I might be tempted to try and see how it goes just for
fun.

Trying out SMB
~~~~~~~~~~~~~~

I am the only user of the system, and I started with what I thought was
the fastest to setup: SMB. I followed `this excellent
guide <http://www.unixmen.com/howto-install-and-configure-samba-share-in-ubuntu/>`_,
and configured a directory "Media" where I will keep all my media files.
It took only a few minutes. On the OSX side however, it turned out to be
a bit more tricky. I thought the computer would appear in the "Network"
entries automatically, but I was wrong. Instead, I had to connect
manually using "Go -> Connect to server" and specifying
smb://ip-address/" in the dialog. Easy enough, but I honestly don't
understand why the computer does not appear in my Network. My other
laptop (with ubuntu 12.04 as well) is found by my Mac immediately, and I
didn't do anything special except basic install.

After playing for a while with the shares, I realized the interaction
was weird. Occasionally, the machine would actually appear in the
"Shares" section of the Finder, then disappear, then appear again, with
no apparent relation to my actions on the server or on the Mac.
Occasionally, I was also unable to connect at all. I browsed around, and
`asked
around <http://apple.stackexchange.com/questions/91127/smb-linux-share-shows-randomly-on-osx-10-6>`_,
but apparently the only way to make the system detectable by the mac
auto discovery was to `change the avahi
configuration <http://tob.io/post/8383529336/fix-avahi-samba-with-os-x-lion>`_
to add the following smb.service

.. code-block:: xml

    <?xml version=”1.0” standalone=’no’?><!—*-nxml-*—>
    <!DOCTYPE service-group SYSTEM “avahi-service.dtd”>
    <service-group>
        <name replace-wildcards=”yes”>%h</name>
        <service>
            <type>_smb._tcp</type>
            <port>139</port>
        </service>
    <service>
    <type>_device-info._tcp</type>
    <port>0</port>
    <txt-record>model=RackMac</txt-record>
    </service>
    </service-group>

Still, this didn't fix the occasional hiccups of the service, that kept
returning an "unable to connect to the share" error messaged
occasionally, and a general strange behavior of what and how things are
exported to a guest. Although I am sure there is a solution to my
problems, I gave up on SMB, and moved on to SSHFS.

Trying SSHFS
~~~~~~~~~~~~

On paper, `SSHFS <http://fuse.sourceforge.net/sshfs.html>`_ is trivial:
a sftp session is established to the remote host, and the content is
made available as a filesystem via `FUSE <http://osxfuse.github.io/>`_.
This makes the access to the remote NAS extremely transparent, secure
(the traffic is encrypted), and easy to setup. The problem, however, is
that if the connection is suspended (for example, if I put my laptop in
sleep mode) it won't restart when I turn it on again. Minor problem, but
still...

Going with AFP
~~~~~~~~~~~~~~

After so much experimenting, I decided to try out AFP support, and worry
about other computers later on. There `this an excellent tutorial,
albeit old, if you want to use AFP on a Linux
box <http://kremalicious.com/ubuntu-as-mac-file-server-and-time-machine-volume/#netatalk2>`_,
another, `much shorter
one <http://missingreadme.wordpress.com/2010/05/08/how-to-set-up-afp-filesharing-on-ubuntu/>`_,
and `a blog
post <http://krypted.com/mac-os-x-server/hosting-afp-on-linux/>`_. I
went with the first one, to learn something new.

To enable AFP and serve files, I followed the tutorial step by step:
installed netatalk (version 2.2.1 gets installed, so it should use
encryption), configured the netatalk file /etc/default/netatalk with

.. code-block:: text

    ATALKD_RUN=no
    PAPD_RUN=no
    CNID_METAD_RUN=yes
    AFPD_RUN=yes
    TIMELORD_RUN=no
    A2BOOT_RUN=no

Then added the home and share volume to
/etc/netatalk/AppleVolumes.default

.. code-block:: text

    :DEFAULT: options:upriv,usedots
    ~/ "$u home" cnidscheme:cdb
    /home/Share/Media allow:sbo cnidscheme:cdb options:usedots,upriv

And finally putting the following line in /etc/netatalk/afpd.conf (and
it should be the only line in the file)

.. code-block:: text

    - -tcp -noddp -uamlist uams_randnum.so,uams_dhx2.so -nosavepassword -advertise_ssh

It is important that you use uams\_dhx2.so, NOT uams\_dhx.so, otherwise
you will not be able to login. Also, I created an empty
/etc/netatalk/afppasswd file, just to be sure. Apparently, Ubuntu does
not ship the command afppasswd to administer this file. The
authentication info should come from /etc/passwd anyway.

I restarted the daemon (service afp restart), then it's time to
configure avahi to advertise the service. As in the case of SMB, it's a
matter of creating a proper XML file. I created
/etc/avahi/services/afp.service

.. code-block:: xml

    <?xml version="1.0" standalone='no'?><!--*-nxml-*-->
    <!DOCTYPE service-group SYSTEM "avahi-service.dtd">
    <service-group>
    <name replace-wildcards="yes">%h</name>
    <service>
    <type>_afpovertcp._tcp</type>
    <port>548</port>
    </service>
    <service>
    <type>_device-info._tcp</type>
    <port>0</port>
    <txt-record>model=Xserve</txt-record>
    </service>
    </service-group>

And restart avahi with service avahi-daemon restart. The service
immediately appeared in my finder, but I could not access my Media
directory, with the following error message "Something wrong with the
volume's CNID DB". These problems were solved by `following the last
part of this blog post <http://stve.cx/2011/07/netatalk-2-2-b4/>`_: I
removed all the .AppleDB and .AppleDouble directories in my exported
dirs, then changed the cnidscheme to dbd.

AFP now works like a charm, except for a couple of things: first,
it `comes with a range of
caveats <http://netatalk.sourceforge.net/2.0/htmldocs/configuration.html#CNID-backends>`_,
the most striking one is the problem handling symbolic links. I don't
know how hard this can hit me, but I don't think it's a problem at the
moment. Second, `there might be problems in using the Share for anything
mac-related such as the iPhoto library and similar
stuff <http://kremalicious.com/ubuntu-as-mac-file-server-and-time-machine-volume/#conclusion>`_.
The reason is that these tools rely on metainformation that is supported
by the native HFS+ file system, but not by the underlying EXT4
filesystem my Ubuntu box is based on. I don't know if HFS+ support on
linux would solve this problem, but for now, I just transfer my iPhoto
library there as-is, and see what happens. Worst case scenario, I can
create a HFS+ volume as suggested in the post, and mount it remotely
from the Mac.

UPnP/DLNA
---------

A quick note on UPnP/DLNA server. My TV technically supports this
protocol, so I tried to install a DLNA server, mediatomb. There's a
`good guide on this
blog <http://isaraffee.wordpress.com/2012/03/01/setting-up-a-upnp-av-server-using-mediatomb-in-ubuntu/>`_.
After installing it and trying it out, I decided to remove it for
various reasons. The first is that mediatomb is not really intuitive,
not particularly fancy in its setup. The configuration file is overly
complex, and setting up the file database is counterintuitive and
requires web access. Additionally, the daemon scans the directories, but
not having any understanding of the actual content, you find a lot of
spurious information, such as the thumbnails of iPhoto. Also, UPnP is
very slow: accessing my photo directory took 5 minutes and, although I
hope it's cached, I don't find the whole thing deserving of attention
when I can use XBMC.

Wake-On-Lan
-----------

It would be very convenient to be able to turn on the system from my
laptops, in case am in bed, I am lazy and I need to access some files.
To this purpose, there's Wake-On-Lan, a mechanism that allows to turn on
the system remotely by sending a "magic ethernet packet" to its ethernet
adapter. To enable this behavior, support in both the BIOS and the
ethernet adapter must be present. When the system is off, the network
adapter keeps listening for the magic ethernet packet, and when it
receives it, it asks the BIOS to power up the system.

Technically, `WiFi Wake-On-LAN does
exist <http://www.neowin.net/forum/topic/868016-howto-enable-wake-on-lan-via-wifi/>`_,
but it's not supported by my motherboard. This is unfortunate, as I did
everything through WiFi until now. I bite the (minor) bullet and connect
the system via ethernet cable.

I found a couple of good tutorials on how to setup WoL
(`[1] <http://wiki.xbmc.org/index.php?title=How-to:Set_up_Wake-On-Lan_(Ubuntu)>`_,
and `[2] <https://help.ubuntu.com/community/WakeOnLan>`_), and I will
detail the main points. First, I entered the BIOS, and in Advanced ->
ACPI settings I set Wake On Lan to Enabled. While I was there, I also
set "Restore from AC Power Loss" to "Power Off". I don't want my
computer to start up arbitrarily if there's a power outage, and this
solves the minor inconvenience of having it power up when I turn on the
PSU.

For the network adapter side, I need to start up Linux and do some
tinkering. `This post describes how to do
it <http://askubuntu.com/questions/47918/how-can-i-enable-wake-on-lan-permanently>`_.
I installed ethtool and peeked the current setup with ethtool eth0

.. code-block:: text

    Supports Wake-on: pumbg
    Wake-on: g

So it appears that Wake-on-Lan is already enabled, and it will be
triggered by the magic ethernet packet (option "g").

To test it from my Mac, I downloaded
`WoM <http://software.doogul.com/wom/>`_. This tiny but amazing program
allows you to send the WoL packet with just a click. I took note of the
IP address and ethernet address of my NAS, configured WoM appropriately,
and turned off the NAS. With a click on "Wake", I was able to start it
successfully, and I am now a happy nerd.


