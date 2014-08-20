Bug fingerprinting and code phylogenies
#######################################
:date: 2009-06-24 17:32
:author: Stefano
:category: Software Licensing
:slug: bug-fingerprinting-and-code-phylogenies

I recently read `this post on a GPL
violation <http://sev-notes.blogspot.com/2009/06/gpl-scummvm-and-violations.html>`_
occurred for the game engine ScummVM. It appears that Atari released a
game who was obtained by a sub-sub-contractor, who used the GPL released
code taken from ScummVM, without giving credit or obey to the GPL
license. That would be easily solved except that the Nintendo NDA
forbids the use of opensource software (something I don't get. What's
the problem with opensource ?) so a settlement had to be found.

The interesting part is how they recognized the GPL violation, and
recognized the exact version of ScummVM used: by verifying bugs. Bugs
are characteristics quirks of every software and every version of it.
You can use this technique to find exactly which build you have in
front.

This can be taken to the extreme.

`Phylogenetic
analysis <http://en.wikipedia.org/wiki/Phylogenetic_tree>`_ is a
technique that is used in evolutionary biology. You get the animals of
today, with their genetic code, and you compare their code. It won't be
the same: you will have some differences. It is clear that these
differences come from modifications from a common genetic ancestor,
which has mutated. By using the proper approach, you can find how
related are these organisms, and have an idea on how the ancestor code
was with a certain degree of probability.

You can do phylogenetic analysis on books as well. Highly copied and
translated books, like the bible, or the odissey, are available in many
different copies, written by hand in different times from a different
starting copy. By doing phylogenetic analysis on the text, you can
obtain useful information about when a given copy has been performed, if
it's authentic, and how the original text should have looked like.

Phylogenetic analysis on the source, or on the bugs, to reconstruct the
evolutive steps of the code is another very powerful application, in
particular when legal issues are present. Is the
`Felsenstein <http://www.amazon.com/Inferring-Phylogenies-Joseph-Felsenstein/dp/0878931775/>`_
going to be in every software lawyer's bookshelf ?
