Hacking wikkawiki
#################
:author: Stefano
:category: Administrative, Computer Science

Wikkawiki is a quite interesting piece of software. It is very minimal
but at the same time quite powerful. It is simple to hack, and I'm doing
it because:

-  I would like to have space available in page names, and also free
   form capitalization, but wikkawiki requires the pages to have
   CamelCase. This is not useful, especially with long pagenames
-  Wikkawiki does not support multipages. This means that very long
   pages will be printed out as a single, long page, not very simple to
   read. Tikiwiki supports this concept, but neither wikka nor mediawiki
   allow it.
-  I need latex support. Mediawiki uses a OCaml plugin to perform the
   task. I don't want to add OCaml support, mainly because I'm not
   competent in this language and if something goes wrong I cannot fix
   it quickly.

At the moment, I am almost done with space names, although I would like
to replace spaces with underscores, in mediawiki style. This improves
the readability of the URL. For latex support, I can probably recycle
the hack I did for Tikiwiki. It is far from perfect, but at least it
works. For multipages, It should not be very complex (I hope). I do not
plan to make these modifications public, mainly because I'm not coding
them with the idea of releasing them as stable, well documented patches.
Maybe after some testing and cleanup I could consider to make them
available.

I will start publishing as soon as the wiki is up and tested for the
space in page names. The rest can be added later. Unfortunately I have
to deal with a lot of stuff, and I have a very long queue to take into
account.
