iSight stops working? Check google talk plugin.
###############################################
:date: 2013-03-05 22:54
:author: Stefano
:category: MacOSX
:slug: isight-stops-working-check-google-talk-plugin

Occasionally, my iSight stopped working, even in the middle of a Skype
video session, with the camera in full control of Skype. Any effort to
re-enable the camera failed with a "Camera in use by another
application" message. I could not wrap my head around the issue, until I
investigated a bit and I think I managed to understand what's going on.

Occasionally, during video chat, Skype detaches from the camera in order
to switch resolution, probably to scale it accordingly to current
bandwidth conditions. During this split second, it may happen that the
google talk browser plugin takes over the camera, and never relinquishes
it. The camera is now stuck with google talk, Skype can't grab it
anymore, and so for all other camera applications. The only solution
appears to be a reboot.

I was able to fix the problem by issuing

::

    ps uaxw |grep Firefox

which may produce the following output

::

    sbo     21173   0.0  0.1   414040   2492   ??  S     5May11   0:07.47 
            /Applications/Firefox.app/Contents/MacOS/plugin-container.app/
            Contents/MacOS/plugin-container /Library/Internet Plug-Ins/
            googletalkbrowserplugin.plugin -omnijar /Applications/Firefox.app/
            Contents/MacOS/omni.jar 21168 gecko-crash-server-pipe.21168 
            org.mozilla.machname.855559451 plugin

The solution is to kill this process with the appropriate pid (in this
case, 21173).

::

    kill 21173

this frees the camera without a reboot.
