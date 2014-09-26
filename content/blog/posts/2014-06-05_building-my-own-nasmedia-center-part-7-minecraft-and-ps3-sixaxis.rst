Building my own NAS/Media center - Part 7 - Minecraft and PS3 SixAxis
#####################################################################
:date: 2014-06-05 15:10
:author: Stefano
:category: Hardware, Ubuntu
:tags: center, media
:slug: building-my-own-nasmedia-center-part-7-minecraft-and-ps3-sixaxis
:attachments: blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202226.png, blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202515.png, blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202558.png

How can I possibly live without minecraft? Downloading the Sun JRE is
easy. From the Oracle website, I got the JRE-7u21, downloaded a .tar.gz
file, and unpacked it in /opt/oracle (just to keep it consistent with
/opt/google/chrome)

To download minecraft, I logged in my ***premium*** account (heh) and
downloaded the software, a straightforward operation but when I finally
started the game, all I got was a black screen with the following error
message

::

    Exception in thread "Thread-3" java.lang.UnsatisfiedLinkError:
    /home/sbo/.minecraft/bin/natives/liblwjgl.so: 
    /home/sbo/.minecraft/bin/natives/liblwjgl.so: wrong ELF class: ELFCLASS32 
    (Possible cause: architecture word width mismatch)

Apparently, this is due to incorrect LD\_LIBRARY\_PATH setup and
outdated libraries. I fixed with adding the following line to ~/.bashrc
export
LD\_LIBRARY\_PATH=$LD\_LIBRARY\_PATH:"/opt/oracle/java-7-oracle/lib/amd64/"
and `updating the LWJGL library as indicated
here <http://www.minecraftwiki.net/wiki/Tutorials/Update_LWJGL>`_.

To add the minecraft icon, it was easy: I simply `followed this post on
askubuntu <http://askubuntu.com/a/183423/119417>`_.

Setting up the Playstation 3 controller for minecraft
-----------------------------------------------------

Playing minecraft with the mouse and keyboard is fine if you are sitting
close to the screen and with a table in front of you. If you are playing
from a sofa, you need a controller, and I already have one: the PS3
controller. The task now is to setup the Linux box to make the two
communicate.

The PS3 controller is a real cool toy: it sports a huge number of
proportional buttons, gyroscopes, and joysticks. It's a completely
programmable, very standard object that talks USB and Bluetooth. Props
to Sony for producing such a technological jewel, and for once not going
proprietary. That said, I did some research and got somewhere, although
it's far from easy. Technically, the kernel recognizes the controller as
soon as plugged in. dmesg says

::

    [182796.359735] usb 2-1.1: new full-speed USB device number 16 using ehci_hcd
    [182796.469769] usb 2-1.1: New USB device found, idVendor=054c, idProduct=0268
    [182796.469775] usb 2-1.1: New USB device strings: Mfr=1, Product=2, SerialNumber=0
    [182796.469778] usb 2-1.1: Product: PLAYSTATION(R)3 Controller
    [182796.469781] usb 2-1.1: Manufacturer: Sony
    [182796.688727] sony 0003:054C:0268.0011: Fixing up Sony Sixaxis report descriptor
    [182796.714451] input: Sony PLAYSTATION(R)3 Controller as /devices/pci0000:00/0000:00:1d.0/usb2/2-1/2-1.1/2-1.1:1.0/input/input31
    [182796.714909] sony 0003:054C:0268.0011: input,hiddev0,hidraw0: USB HID v1.11 Joystick [Sony PLAYSTATION(R)3 Controller] on usb-0000:00:1d.0-1.1/input0

but this is not enough to use the sixaxis out of the box. The following
instructions focused on USB communication, as my computer has no
bluetooth at the moment. I installed three softwares, two of them
(QtSixA and jstest-gtk) from the Ubuntu software center. I recommend
installing them first, because they bring a lot of useful dependencies
in.

First I tried QtSixA. I got it to see the controller, but no buttons
were available. I could see the controller though, so it was a step in
the right direction.

Then, I tried jstest-gtk. This recognized the controller as a joystick
on /dev/input/js0. I performed the calibration moving the controller
here and there, pressing all the buttons and moving all the joysticks.
This step is particularly important to associate the raw values for each
"axis" (as the control channels are called) coming from the driver to
the values to send to the applications (in an interval apparently
between -32767 and 32768). After the step was completed, I could see the
actual values fluctuate in jstest-gtk as I moved the controller around.

`|Screenshot from 2013-05-24
20:22:26| <http://forthescience.org/blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202226.png>`_

Now that I have a correct driver setup, I need to configure the mapping
between the joypad events and the sending of actual game-useful events
(such as mouse movements, keyboard presses). For this, I downloaded
`qjoypad <http://qjoypad.sourceforge.net/>`_. This application is not
available on the ubuntu software center, so I had to compile and install
it at the command line. Once ready, I had to run it with the --notray
option, because with the icon in the tray I don't get any popup to
configure the pad. This produces a nasty floating window with a joystick
in it, but at least it works. QJoypad must be kept running when I play,
being the one responsible for mapping pad events to keyboard/mouse
events.

qjoypad is a bit complex to configure, but it does its job and it's
highly configurable. I created a new layout called "minecraft" and then,
for each axis, configured the events. For axis 1 (the left-right
movement of the left analog stick) I wanted to have the player movement,
so I set in the popup dialog as follows

`|Screenshot from 2013-05-24
20:25:15| <http://forthescience.org/blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202515.png>`_

Note the blue and red markers in the dialog. When you move the analog
stick, a grey area increases. Hitting the blue marker makes it enter in
a "fire" area, where the event is produced, in this case, the A letter
is sent. I put the blue marker very high so that I don't get accidental
movements if I just touch the analog stick.

The red marker becomes important for proportional movements, such as
looking around (assigned to the right analog stick, Axis 3 and 4). In
this case, I want to send mouse events. The blue marker is considered
the zero. the red marker is considered the highest value for mouse
action. I put my markers as follows

`|Screenshot from 2013-05-24
20:25:58| <http://forthescience.org/blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202558.png>`_

so that I don't get accidental movement by just brushing the stick (blue
marker), and I get full speed a bit before hitting the maximum excursion
with the stick (red marker). I had to reduce the mouse sensitivity, and
mapped the excursion linearly (that is, the farther I move the stick
off-center, the faster the visual panning goes, with speed being in a
smooth, progressive association to the stick displacement).

Full configuration took me a while, and I had to test it for
practicality in minecraft, because some actions must be accessible at
the same time (for example, jumping and digging, jumping and moving, and
so on). I am still refining the associations. Obviously, the select is a
good button for inventory (it's kind of a standard in PS3 games), as
well as the two sticks for movement and look-around. The arrows buttons
left and right could be used to cycle the in-hand item, although this
prevents inventory change while moving. A good alternative could be the
shoulder trigger buttons, but they are not easy to reach and have a bad
tactile feedback, so I am trying not to use them. Shoulder buttons can
be used for digging or jumping.

After a bit of trials, I came up with this redundant association. It's
still experimental, but I really enjoy being able to set the digging
action sticky by pressing square.

::

     
    Joystick 1 {
     Axis 1: dZone 16768, +key 40, -key 38
     Axis 2: dZone 13492, +key 39, -key 25
     Axis 3: gradient, dZone 6167, maxSpeed 10, tCurve 0, mouse+h
     Axis 4: gradient, dZone 5589, maxSpeed 10, tCurve 0, mouse+v
     Button 1: key 26
     Button 3: key 65
     Button 4: key 9
     Button 6: mouse 5
     Button 8: mouse 4
     Button 9: mouse 4
     Button 10: mouse 5
     Button 11: mouse 3
     Button 12: mouse 1
     Button 14: key 9
     Button 15: key 65
     Button 16: sticky, mouse 1
    }

Trying Bluetooth
----------------

With the addition of a Bluetooth dongle, I started playing with the
possibility of using the controller as a wireless device. I `followed
this page <http://www.pabr.org/sixlinux/sixlinux.en.html>`_, but despite
my best efforts, I failed to pair the controller and the computer. I
give up on this because it's not as important, and I can play with the
cable just fine.

.. |Screenshot from 2013-05-24 20:22:26| image:: http://forthescience.org/blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202226-155x300.png
.. |Screenshot from 2013-05-24 20:25:15| image:: http://forthescience.org/blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202515-300x287.png
.. |Screenshot from 2013-05-24 20:25:58| image:: http://forthescience.org/blog/wp-content/uploads/2013/05/Screenshot-from-2013-05-24-202558-300x241.png
