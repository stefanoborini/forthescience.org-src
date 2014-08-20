Problems with MacOSX and Java "Plugin disabled"? Here is the solution
#####################################################################
:date: 2013-02-02 00:17
:author: Stefano
:category: MacOSX
:tags: java, plugin
:slug: problems-with-macosx-and-java-plugin-disabled-here-is-the-solution

Apparently today February the 1st something happened in OSX so that Java
plugins stopped working. `I found the
solution <https://discussions.apple.com/thread/4761112?tstart=0>`_ on
the OSX forums at Apple, courtesy of user Shirkan79: you have to invoke
the following command (on a single line)

::

    sudo /usr/libexec/PlistBuddy -c "Delete :JavaWebComponentVersionMinimum" 
    /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist

and type your password. Reopen your browser and Java plugins will work
again.
