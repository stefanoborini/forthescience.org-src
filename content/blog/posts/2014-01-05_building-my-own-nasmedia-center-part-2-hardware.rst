Building my own NAS/Media center - Part 2 - Hardware
####################################################
:author: Stefano
:category: Hardware
:tags: center, hacking, media, nas

To select the hardware, I mostly followed indications from various
sources. `This blog had me started on the
basics <http://www.tjansson.dk/?p=1398>`_, together with the `followup
by the same author <http://www.tjansson.dk/?p=1660>`_. Most of the open
questions and possible troubles have been solved through aggressive
googling, but most of all precious contribute from a friend of mine,
Hans.

Here is a quick panorama of the various components I bought, together
with the unit price, the shop I used, and a general description for the
choice I made.

Motherboard: Zotac Z68-ITX WiFi Supreme
---------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3005.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 110.99 EUR on `salland.eu <http://www.salland.eu>`_

This little mini-ITX motherboard has everything I need. Extremely
compact and yet very powerful.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3013.jpg
   :alt: image
   :width: 400px
   :align: center

It supports Intel core i3/5/7 processors, so it leaves my options open
when it comes to processor choice. It has an on-board nvidia (great for
experiments with CUDA) and support for on-chip Intel HD, which is
provided by my Intel Core i3. This is normally known as a hybrid
graphics system, and it can be a source of trouble with Linux. More
details will follow on the subsequent posts.

There are plenty of connection options in the back panel.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3045.jpg
   :alt: image
   :width: 400px
   :align: center

Notice the presence of many different video output ports. This will
become important later on, during graphics setup. There are also plenty
of USB ports, both on the panel and on-board, and an eSATA port.

Processor: Intel Core i3 3.3 GHz tray
-------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3023-300x274.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 107.99 EUR sold by salland.eu

A core i3 is probably all I need. If I find it inadequate, the
motherboard can take up to an i7. I probably erred in choosing a high
clock frequency, as the higher it is, the higher is the heat dissipated.
I was surprised at the shape and weight of the processor. The last time
I had a processor in my hands, it was a bulky but light Pentium II 333
MHz cartridge. The i3 is small, tough and heavy.

I decided to take the tray version. The boxed version includes the
cooler/fan (or so I've been told), but I was not sure of the cooler
size, and I wanted a low profile, low noise one. Vertical space in the
case is at a premium.

Processor cooling: Scythe Shuriken Rev.2 - SCSK-1100
----------------------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3003.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 28.95 + 19.99 shipping = 48.94 GBP = 57.07 EUR sold by ADMI
Limited

This processor fan is dead silent and with a reduced height, making it
the perfect candidate for a HTPC case form factor.

Thermal paste: Arctic Silver 5 3.5g Thermal Paste
-------------------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3141.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 6.05 + 5.02 = 11.07 GBP = 12.91 EUR Sold by ADMI Limited

This is the best thermal paste you can get, according to my friend Hans.
The Scythe came with a small amount of unnamed paste, but I preferred to
have my own Artic Silver syringe.

Case: Techsolo TC-2200 Casing M-ATX HTPC 350 W Aluminium
--------------------------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3001.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 80.43 + 14.75 shipping = 95.18 GBP = 110.99 EUR from ALB Computer
Germany via Amazon.co.uk

I chose this case for many reasons: first, it was cheap. Second, it
included a Power Supply that was already sized appropriately to my
needs. Third, its small form factor. There's not a lot of disk slots
available (only two, a 3.5 and a 5.25), I am not planning to build a
disk farm.

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3006.jpg
   :alt: image
   :width: 400px
   :align: center

The case is also quite stylish and with plenty of features, including a
remote control (which I am not using at the moment). Overall, I think
this case as excellent for my needs.

Memory: Crucial SODIMM 2GBx2,204-pin,DDR3 PC3-10600,Cl=9,1.5v
-------------------------------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3100.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 27.40 + 7.02 = 34.42 GBP = 40.14 EUR by: mopodo-uk

I did not have particular requirements for the RAM, I just wanted a
decent amount. 8 GiB were probably too much. I opted for the same amount
I have on my laptop, and I will upgrade later on if I really want to.
RAM is cheap, but less RAM is cheaper.

Hard drive - WD Caviar Green 3000 GB, SATA, 64 MB, 5400 RPM
-----------------------------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3329.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 121,99 EUR from salland.eu

I chose a Western Digital Green with a whooping 3 Terabytes of space.
After the starving of the SSD, I don't want to risk space exhaustion
anymore.

Case Fan - Scythe Glide Stream Zwart, 120 mm, 1000 Rpm
------------------------------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3330.jpg
   :alt: image
   :width: 400px
   :align: center

Price 13,00 EUR from salland.eu

I needed a good fan to improve air circulation in the case. I chose the
dead-silent, big Scythe Glide Stream. The fan is big, and fits perfectly
on the bottom vent of the case.

Bluetooth dongle - Konig Micro USB
----------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3331.jpg
   :alt: image
   :width: 400px
   :align: center

Price: 13,00 EUR from salland.eu

A simple bluetooth dongle to connect to a wireless mouse and keyboard.
Also useful if I were to implement a proximity detection so that the
media center turns active when I come back home.

OS Hard drive - Unnamed Fujitsu
-------------------------------

.. image:: http://forthescience.org/blog/wp-content/uploads/2013/06/IMG_3338.jpg
   :alt: image
   :width: 400px
   :align: center

Price: Unknown. Recovered from my Mac after replacement.

This is the old disk I extracted from my mac and replaced with an SSD. I
changed it due to worries about hardware failure, but apparently the
disk is fine, and my woes at the time might have been due to battery
issues. The disk is only 160 GB, which is enough to keep the OS and some
additional software I might install.

The reason for the powerstrips will become clear in later posts.

Total price for the system and final remarks
--------------------------------------------

With the exclusion of the latter item, the final price for the system is
588.08 EUR. The basic MacMini is priced at 649,00 EUR, and has a smaller
hard drive (500 GB), no nvidia card, and less software flexibility. I am
overall extremely pleased with the result I obtained.

As a final note, I am deeply satisfied of the online shop
salland.eu They have excellent products in
stock, they are quick at shipping and provide good and fast email
service. I can confidently recommend them, if you can deal with the page
in Dutch.

In the next post, I will start assembling the hardware.

