Building my own NAS/Media center – Part 5 – Make Ubuntu 12.04 play nice on NVIDIA
#################################################################################
:date: 2014-04-05 00:15
:author: Stefano
:category: Hardware
:tags: center, linux, media, nas, nvidia, ubuntu
:slug: building-my-own-nasmedia-center-part-5-make-ubuntu-12-04-play-nice-on-nvidia

Following the adventures in OS setup from last time, here is a
step-by-step guide to make Ubuntu 12.04 play nice on a nvidia card
setup:

#. Plug your screen on the sockets associated to the nvidia card.
#. Get into the BIOS -> chipset -> Display configuration -> Initiate
   graphic adapter. Set it to PEG/PCIEx4
#. Boot the ubuntu 12.04 installation disk or usb key
#. Install the system normally.
#. reboot into the new system
#. Login. Open a terminal. Ignore any popup, and close any software
   manager emerging. Do

   ::

       sudo apt-get update
       sudo apt-get upgrade
       sudo apt-get install linux-image-generic-lts-quantal linux-headers-generic-lts-quantal

#. Tea break. When the three commands are completed, reboot.
#. Back into the system. Open a terminal
#. Go into System settings -> Additional drivers. Select and activate
   the "version current" of the NVIDIA driver.
#. Do not reboot. Instead, open a terminal, do

   ::

       cat /etc/X11/xorg.conf

   If it contains something like

   ::

       Section "Device"
              Identifier "Default Device"
              Option "NoLogo"    "True"
       Endsection

   this is wrong, and you have to issue the following command

   ::

       sudo nvidia-xconfig

   Disregard any VALIDATION ERROR messages. Check if the new xorg.conf
   file contains (among a lot of other things) something like this

   ::

       Section "Device"
              Identifier "Device0"
              Driver     "nvidia"
              VendorName "NVIDIA Corporation"
       Endsection

#. Reboot.
#. Now you are using the Nvidia drivers. Test them with the following
   from a terminal

   ::

       sudo apt-get install mesa-utils
       glxgears

   .. raw:: html

      <p>

   You should get a nice spinning gearset. Close the glxgears window

#. Edit the /etc/rc.local as root with the following command

   ::

       sudo vi /etc/rc.local

   and add the following line before the "exit 0"

   ::

       /usr/bin/nvidia-smi -pm 1

#. Reboot. You are done.

The magic line nvidia-smi -pm 1 deserves some explanation. The problem
with the corrupted screen and inability to get back to lightdm once
logged out is `due to the fact that X releases the nvidia
driver <http://askubuntu.com/questions/140703/cant-logout-in-ubuntu-12-04-x64-with-nvidia-drivers>`_.
with -pm 1 you force the module to be persistent and not be unloaded,
The reason why X did not start is probably due to a race condition
between the instantiation of the driver and the access of the new X
session started by lightdm after logout.
