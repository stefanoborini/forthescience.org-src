Random, strange behavior? Check your free HD space first!
#########################################################
:date: 2009-02-02 00:27
:author: Stefano
:category: Operating Systems
:slug: random-strange-behavior-check-your-free-hd-space-first

Yesterday I was adding a small feature to
`GenomeAtlas <http://www.cbs.dtu.dk/services/GenomeAtlas-3.0/>`_ when
suddenly something strange happened: in the php script, images are
generated dynamically using the gd extension, and saved into a cache.
For some reason, suddenly some images were corrupted. At first, I blamed
the Apache installation or the php interpreter, because none of the
modifications I was doing involved the image generation routines. I was
due to something else, so I kept the problem outstanding and left. When
I came back, the problem had magically disappeared, but after a while it
started again. I checked the cache, and some images were empty. Kind of
weird.

I committed part of the code I modified, and the subversion client
warned me that the disk was full, and it was unable to commit. Suddenly
everything made sense. This happened to me every now and then, and I
always forget this golden rule: **if something weird and unexplainable
starts to happen on your installation, check the free hard disk space
first!**
