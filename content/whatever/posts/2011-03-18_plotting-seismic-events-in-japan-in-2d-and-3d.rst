Plotting seismic events in Japan in 2D and 3D
#############################################
:date: 2011-03-18 01:15
:author: Stefano
:category: Earthquakes
:tags: japan, quake, Sendai
:slug: plotting-seismic-events-in-japan-in-2d-and-3d

I just saw this very interesting and shocking movie reporting the quakes
rattling Japan from 9th to 14th of March.

The amount of events after the big one, at 1:17, is devastating. I
wanted to see more, adding the third dimension. I tinkered with wget,
bash, gnuplot and ffmpeg to produce this less visually appealing but
scientifically important data representation

What you see is the hypocenter (latitude, longitude and depth) of each
quake from the 6th to 17th of March. Data were gathered from the `Japan
Meteorological Agency <http://www.jma.go.jp/en/quake/>`_ web pages for
the purpose of personal use and research. Red points are surface quakes
(from 0 to -20 km), green are medium depth (-30 to -50) and blue are
deep quakes (-60 to -80). You can clearly see the very steep subduction
zone as a sharp feature digging into the Earth crust. It's a real
tragedy we have to pay such high price associated to these data, but
these data from previous events are the ones that allowed many lives to
be saved today.
