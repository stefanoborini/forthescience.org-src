SeisMac and Quake-Catcher Network - turn your mac into a seismograph
####################################################################
:date: 2011-03-30 09:00
:author: Stefano
:category: Earthquakes, MacOSX
:slug: seismac-and-quake-catcher-network-turn-your-mac-into-a-seismograph
:attachments: blog/wp-content/uploads/2010/11/SeisMac.png

Occasionally, I get to find very interesting scientific apps for the
Mac. In light of the recent events,
`SeisMac <http://www.suitable.com/tools/seismac.html>`_ is definitely
one of those. While not technically useful for the general public, it is
a very important application for research.

All Mac laptops include the so-called `Sudden Motion
Sensor <http://en.wikipedia.org/wiki/Sudden_Motion_Sensor>`_, a
Micromechanical system
(`MEMS <http://en.wikipedia.org/wiki/Microelectromechanical_systems>`_)
accelerometer. This sensor is a `very cheap integrated
circuit <http://en.wikipedia.org/wiki/Vibrating_structure_gyroscope#MEMS_gyroscope>`_
which can be found in iPhones, iPod touch, the WiiMote, and many others
gadgets. In the case of laptops, its main purpose is to park the hard
drive head in case of a sudden drop, reducing the chance of damage to
hard disk platters due to impact with the reading head. The sensor can
however be queried and used for many other applications, from the
facetious (like `LiquidMac <http://uri.cat/software/LiquidMac/>`_) to
the more serious, like SeisMac. The idea is to use the Sudden Motion
Sensor to detect earthquakes, effectively converting your laptop in a
seismometer. It is interesting to see how sensitive the Sudden Motion
Sensor can be. This is a tracking of my laptop with SeisMac

`|SeisMac
image| <http://forthescience.org/blog/wp-content/uploads/2010/11/SeisMac.png>`_

The nervous, black oscillations you see on the left hand side are
produced by a fan on my table, which I then removed. As you can see,
these oscillations are uniform on the x, y and z axes. The single spike
along the z axis you see in the center it's me doing a touchpad click to
take a screenshot, and the series of strong impulses on the right it's
again me, typing the filename. Don't be deceived by the stronger than
usual gravity. I never calibrated the reading, so the absolute values
can be wrong.

SeisMac is great, and you can configure its sensitivity to disregard
human-generated events and catch the big deal when the quake strikes,
but it does not beat another similar program, with a very interesting
distributed project behind it: the `Quake Catcher
Network <http://qcn.stanford.edu/about/index.php>`_. The idea is simple,
but very powerful: laptops and desktops volunteering to be part of the
network constantly collect seismic data through the Motion Sensor, and
alert a central server of any movement. If the laptop is moved, hit, or
a local, non-seismic event occurs (such as a truck passing by), the
signal will be considered by the central server as spurious due to its
locality. However, if multiple unrelated laptops feel the same event,
the server will validate it as an actual quake. Knowing the position of
each laptop it is possible to obtain the intensity of the quake at each
location, the speed of propagation, and the kind of oscillation. All
these data provide precious details not only on the quake itself, but
also on the terrain and the buildings, a very important dataset to
improve prevention and emergency response.

Additional Links
----------------

-  `Technical page on Apple Sudden Motion
   Sensor <http://www.osxbook.com/book/bonus/chapter10/ams/>`_
-  `An interesting article explaining the Quake Catcher
   Network <http://www.livescience.com/technology/laptop-earthquake-detectors-100323.html>`_

.. |SeisMac image| image:: http://forthescience.org/blog/wp-content/uploads/2010/11/SeisMac.png
