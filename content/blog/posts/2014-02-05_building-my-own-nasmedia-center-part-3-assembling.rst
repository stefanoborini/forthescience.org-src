Building my own NAS/Media center - Part 3 - Assembling
######################################################
:author: Stefano
:category: Hardware
:tags: center, hacking, media, nas

Before I start, please keep in mind that all images are linked to a high
resolution version, in case you want to see more details. For the
impatient, here is a pic of the final assembly

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3508.jpg
   :alt: image
   :width: 400px
   :align: center

Preparing the case
------------------

To start my adventure in assembling, I opened and prepared the case.
There's plenty of space, for now.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3009.jpg
   :alt: image
   :width: 400px
   :align: center

The case has three bottom intakes (one covered by the hard drive brace),
and one potential intake on the back. I say potential, because this is
actually the space for the PCIe cards, and the plate can be removed with
some minor hack. I am not planning to use any PCIe card, so at least in
theory, I can put a fan in there.

The case came well equipped with cables. The connectors you see for the
front panel are for the frontal USB ports and the IR receiver/front
panel buttons. The case came with a remote, so I assume it's possible to
generate USB keyboard events and hook them to specific software actions.
Unfortunately, my motherboard comes with only one 5 pins plug for USB2,
so I had to choose between the frontal USB panel and the IR receiver. I
chose the former.

One possible solution to this dilemma is that the motherboard also
provides USB3 pins. These pins accommodate a 2 ports USB3 connector,
shaped to fit the PCIe reserved area in the back. I could, in principle,
keep this connector inside the case, then use `this USB to PIN
adapter <http://www.amazon.com/Adapter-designed-motherboard-external-connector/dp/B000V6WD8A>`_
to plug the IR receiver in. It's a side project I will attack if I have
time. For now, I need to assemble the motherboard in place.

Putting the processor in the socket
-----------------------------------

The Zotac Z68 ITX motherboard is very cute but packed with action.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3013.jpg
   :alt: image
   :width: 400px
   :align: center

I removed the red warning label, and opened the CPU socket by moving the
lever on the side. The amount of pins found in a modern processor is
mind-bending.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3026.jpg
   :alt: image
   :width: 400px
   :align: center

Once I unpacked the processor, fitting the processor required some care.
First, I had to be sure it was correctly aligned (see red arrows). Then
I had to clean it from the inevitable fingerprint smudges that end up on
it after I fumbled for a while trying to find the correct alignment.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3027.jpg
   :alt: image
   :width: 400px
   :align: center

All that was left to do was to close the metal brace and put the lever
back in the slot. It required some "Damn I'm going to break it"
strength, but it fitted nicely.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3028.jpg
   :alt: image
   :width: 400px
   :align: center

Assembling the processor fan and cooling
----------------------------------------

The fan and the cooling system came preassembled. I had a lot of
different mounting braces available, and I had to choose the proper one.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3031.jpg
   :alt: image
   :width: 400px
   :align: center

Unfortunately, I had to use the push pins, the black and white plastic
things you can see in the picture. These things are **evil**, and I'll
get into that in a moment.

Before that, I had to apply the heat paste. I visited the Arctic Silver
website, where they have `clear instructions for the various
processors <http://www.arcticsilver.com/intel_application_method.html#>`_.
For my i3, the vertical strip method is the best choice. I added a small
amount (a bit more than the size of a rice seed) to the cooling plate

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3034.jpg
   :alt: image
   :width: 400px
   :align: center

and spread it thin and uniform with a plastic spatula. This fills
eventual gaps and provides better grip to what comes next.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3036.jpg
   :alt: image
   :width: 400px
   :align: center

Now it's time for the processor. I spread a uniform line in the
appropriate direction, 2-3 mm thick.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3039.jpg
   :alt: image
   :width: 400px
   :align: center

and I can now put the cooling system on. Here comes the push pins. These
things are extremely hard to put on, especially the last one.
Supposedly, you push them and a click they are set. In practice, I had
to push so hard for the last two that I almost broke my thumb. To remove
them, it's even worse, because you have to rotate the upper part, but
the pressure makes it hard to rotate and you don't have enough leverage.
If you add to this the cramped space of a mini-ITX board, the evening
ends in tears, swearing, and more than 30 minutes of failed attempts to
settle the last pin. The bastard is here pictured

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3040.jpg
   :alt: image
   :width: 400px
   :align: center

Assembling the RAM
------------------

Adding the two RAM modules is easy. Just open the white locks

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3053.jpg
   :alt: image
   :width: 400px
   :align: center

align the modules in the sockets, putting the notch in the right place,
and push down vertically with some force. The white locks will close
automatically. Clearly, I started from the slot most difficult to reach,
that is, the one near the processor. The CPU cooler prevents easy access
to this slot, but it's a minor inconvenience and everything slides into
place with relative ease.

Adding the Hard Drives
----------------------

For testing and initial boot, I did not use the large hard drive, but an
old spare I had laying around. I originally changed it due to some
worries about its condition, so I might just discard it, but I used it
for a while and it's not giving me any problems. I just plugged the SATA
cable and the power cable. Initially, I let it loose, but when I started
the final assembly I used Powerstrips to lock it into a reasonable
position.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3341.jpg
   :alt: image
   :width: 400px
   :align: center

For the big hard drive, I used the 3.5 inches slot provided by the case.
The remaining 5.25 inches is currently empty, and technically made to
accept a dvd player, but I am keeping the option open for a second hard
drive.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3334.jpg
   :alt: image
   :width: 400px
   :align: center

Final result
------------

Apparently, jumpers went the way of the dodo and the dinosaurs. The
Motherboard has only one jumper, to reset the BIOS. Nothing to be done
on this regard.

I set my fan to be blowing into the case from the bottom, so to keep a
higher pressure inside (reduces dust accumulation). Hot air escapes from
the back through the grid. This setup seems to be fine, but if I find
additional problems, I can add a second fan to the PCIe grid with some
hacking.

When it comes to electrical consumption, the computer in standby
(suspended) consumes 2 W, probably to keep the ethernet powered up for
the WakeOnLan. When turned on and idle, the consumption clocks at 50 W,
which raises to 60 W when watching a movie. Playing minecraft drains up
to 100 W.

Here is again the picture of the final assembly. Now it's time for
software configuration, the subject of the next post.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3508.jpg
   :alt: image
   :width: 400px
   :align: center

