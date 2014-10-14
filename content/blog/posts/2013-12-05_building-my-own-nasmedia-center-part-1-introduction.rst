Building my own NAS/Media center - Part 1 - Introduction
########################################################
:date: 2013-12-05 00:57
:author: Stefano
:category: Hardware
:tags: center, hacking, media, nas
:slug: building-my-own-nasmedia-center-part-1-introduction

A few weeks ago, I took a look at my MacBook's disk occupation and got a
bit worried. The great little software `Disk Inventory
X <http://www.derlien.com/>`_ made extremely clear that my work
directory was a bit too packed with pictures, and checking the total
disk occupation left me with an uneasy feeling of scarcity. This is the
life of the `"lucky" owners of SSD
disks <http://forthescience.org/blog/2011/02/22/upgraded-my-mac-to-ssd-pure-bliss/>`_:
fast, small, and
`unreliable <http://www.codinghorror.com/blog/2011/05/the-hot-crazy-solid-state-drive-scale.html>`_.
In fact, I had some worrying events on my laptop, like requiring
multiple on and offs to finally show the "apple" logo, or getting stuck
while installing updates. To be fair, it could also be the battery's
fault (which OSX is asking me to service), but these factors combined
created a worry and an itch I must scratch.

Building my own Network Attached Storage system
-----------------------------------------------

Clearly I needed a NAS where I could put my stuff, keeping the laptop
light, and get access through the local network. I checked around for
interesting products, and I found some: I really like
`Drobo <http://www.drobo.com/>`_, but to me, the absolute best is the
`Synology <http://www.synology.com/index.php?lang=default>`_ product
selection. Yet, the idea of having a dedicated product for nothing else
than storage started to feel a bit restrictive. I have a TV with HDMI
input. Why can't I play Minecraft on it? The NAS project slowly became a
NAS + "Media center" project, and I embraced the complexity. I quickly
realized it was impossible to find this kind of product off-the-shelf,
so I started planning for self-assembling.

The last time I built my own computer, the processor available was a
`Pentium II 333 MHz <http://en.wikipedia.org/wiki/Pentium_II>`_. It was
as cool as it can get, with its cartridge-like shape and its holographic
watermark. Despite having previous experience in hardware assembling, it
took me a couple of days to build and even more to install, due to
driver problems with Linux. Overall, it was a good experience but I was
more interested in the software side. A few years later, I abandoned the
Intel/Linux world and switched to PowerPC/OSX, and the rest is history.
Things just work in the Mac world, and I like it that way in some
circumstances, when my target is to use a computer with minimal fuss.
Yet, I am not over-zealot as a Mac user, and this is especially true
after they decided to drift more and more towards markets I either don't
care about (iPhone stuff) nor support (App stores). I also recognize a
chance for flexibility and ad-hoc tinkering when I see one, and I'm all
for it.

"Stefano" - I hear you say - "Why don't you buy a Mac mini with an
additional disk and get over the problem? It's a full computer, it's
small, it has OSX and it does all you need". Indeed this is true, but
it's also more expensive. Also, the needs are different: I don't want a
closed system. I need a flexible, highly configurable system that allows
me to do both network storage and general computing in any potential
software direction, and change the hardware when needed, adding new
disks or upgrading the old ones. Having some additional nice features
like an Nvidia chip for some grotesque CUDA experiment is a plus. From
where can I start, with no experience in modern hardware?

Re-learning the world of consumer hardware
------------------------------------------

Not having a lot of hardware experience, I had to re-learn or update on
a few things: processor types, socket types, RAM types, Motherboard
types, case types, and power supply requirements. For example, the
processor world is confusing at best. Here are some of the questions I
had

#. Is an LGA 1155 socket compatible with an LGA 1156. *No, but they are
   for cooler purposes*
#. How many processors are available today, and which one should I get?
   `Too many <http://en.wikipedia.org/wiki/List_of_Intel_microprocessors#64-bit_processors:_Intel_64_.E2.80.93_Sandy_Bridge_.2F_Ivy_Bridge_microarchitecture>`_.
   In addition to the plenty of i3/5/7 models, Intel also has restored
   the Pentium name for recent processors.
#. Sandy bridge, Ivy bridge? Ok, bored now.

Overwhelmed with the details, I asked a friend for help and checked some
blogs. He gave me an extremely useful course in modern hardware, and an
extremely useful price-comparison website,
`tweakers.net <http://tweakers.net/>`_. It's in dutch, but having spent
a year in the `most badass country in the
world <http://en.wikipedia.org/wiki/Flood_control_in_the_Netherlands>`_,
I understand enough to use it. For the blogs, `an authentic trove of
information came from this one <http://www.tjansson.dk/?p=1660>`_. In
fact, I almost built his configuration, with proper changes.

In the next part, I will detail the products I bought and their price.
