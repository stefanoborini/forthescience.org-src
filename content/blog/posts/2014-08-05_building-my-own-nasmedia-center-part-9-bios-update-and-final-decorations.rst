Building my own NAS/Media center – Part 9 – BIOS update and final decorations
#############################################################################
:author: Stefano
:category: Hardware
:tags: center, media, nas

The final assembly is now performing its task amazingly well, except for
one annoying issue: the fans are too noisy. I decided to explore the
issue to conclude the setup. In particular, I observed that the fans
always ran at full speed after wake-up. That sounded like a BIOS
problem, so I checked for `BIOS upgrades on the ZOTAC
website <http://www.zotac.com/support/download.html>`_. Turns out I was
right, and there is indeed a fix for the issue I encounter. I had to
flash the BIOS, an operation that generally makes me nervous, because if
it goes bad, the risk of bricking the BIOS is real.

I downloaded the driver and followed the instructions I found on the
`XBMC website <http://forum.xbmc.org/showthread.php?tid=117107>`_.
Briefly said, it's a matter of installing freedos on a USB stick with
`unetbootin <http://unetbootin.sourceforge.net/>`_, which is available
on the Ubuntu repository. Then, I copied the contents of the dowloaded
BIOS upgrade package, and followed the readmes and pdf guides I found
inside. The flashing operation didn't go smooth, I got some strange
behaviors which unfortunately I didn't write down, but in the end the
BIOS was flashed and the fan problem after wake-up went away.

The second operation I performed was to carve a good fan grid just above
the processor fan. The case is aluminum so it's rather easy to drill,
but unfortunately I only had a Dremel with no drill press, and the
handmade drilling ended up rather poorly executed. One mistake I made
was to drill from the outside, so I ended up with a lot of scratches on
the external paint. I should have done it from the inside. After
drilling, the external case was full of aluminum dust, and I took extra
care of removing every drill imperfection and dust with some light
sandpaper and canned air. You definitely don't want conductive debris on
your electronics.

The resulting, poorly executed grid left me a bit disappointed, so I
wanted to add some creative execution to the case. I decided to carve
`three wolf moon <http://en.wikipedia.org/wiki/Three_Wolf_Moon>`_, a
picture I honestly like, with the fan grid being the moon.To do so, I
printed a thresholded picture of the wolves on a piece of paper and
attached it to the case.

.. image:: http://forthescience.org/blog/wp-content/uploads/2014/04/fan_grid.jpg
   :alt: fan grid
   :width: 400px

Then, I started carving the outline with a sewing needle inserted into a
mechanical pencil.

.. image:: http://forthescience.org/blog/wp-content/uploads/2014/04/mechanical_sweing_needle.jpg
   :alt: needle
   :width: 400px

Unfortunately I would have preferred to transfer the drawing with carbon
paper, but I wasn't able to find it. After transferring the outline, I
shaded the result adding proper hair-like scratches. Here is just a
sample of the procedure

I then scratched the moon and added a few stars with the Dremel. I can't
say I am an artist, but I had a good time doing it, and the result is
better than I expected.

.. image:: http://forthescience.org/blog/wp-content/uploads/2014/04/three_wolf_moon_case.jpg
   :alt: three wolf
   :width: 400px

The full assembly

.. image:: http://forthescience.org/blog/wp-content/uploads/2014/08/final.jpg
   :alt: final
   :width: 400px

This post closes the series, although I will do another post immediately
after this one as an aggregating index. I am currently working on other
two long-term projects, this time software related.

