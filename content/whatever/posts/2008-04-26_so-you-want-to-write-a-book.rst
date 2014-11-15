So you want to write a book?
############################
:author: Stefano
:category: Authoring

So you want to start writing a book? cool. Here is a suggestion I give
you: **renounce**.

Still wanting to start writing a book? Second suggestion: **renounce**.

Are you still convinced that you really want to start writing a book?
Third suggestion: I'll give you more suggestion, but remember that
**start writing** a book is not the same as **writing** a book. Between
the two, there's a book!

So, what does it take to write a book, and why did I suggest to
renounce? Here are the facts:

-  **It is a full time activity**. You cannot do it in your spare time,
   in particular if it's technical. Either writing a book is part of
   your job, or you have to quit your job and focus on the book alone.
   Can you afford it? Can you take the risk if you fail ?
-  **You cannot write it all by yourself**. Writing a book involves many
   different revisions, ideas, and contributions. If you are writing a
   technical book, you have to posses both the knowledge of the
   technical facts and be able to present them properly. Ask yourself:
   who makes the figures? who collects the bibliography? Who revises
   what you write to see if it's clear, or contains errors? No, you will
   not to everything by yourself. Either you will lack time, or skills.
   In any case, stuff like proofreading requires an external
   contribution.
-  **Can you keep the pace?** Are you able to deliver the book before
   the argument is either obsolete, forgotten, or with so much hype that
   tons of books are published before yours ?

If you didn't answer properly to these points, you should renounce.
Otherwise, go on, you are just at the beginning of a very long journey.
This post is an extract of my experience in coauthoring a book which,
hopefully, will be released in 2009. I am not the main author, but I
still took part to the process with a relevant investment of time and
reasoning.

Planning
--------

Once you figured out that you can address the points above, the first
thing you should do before writing is to ask yourself: **who is the
target** of your book? Who should read it? "Some interested in foo,
having already some knowledge of bar", "Someone interested in foo, with
no experience whatsoever", "A poweruser of foo, who wants to know more".
Each of these targets carry a different book layout, examples, and
concepts. You should have your target clear in mind before you start,
otherwise you could end up writing stuff that is not useful, wasting
time.

Reinventing the wheel is bad. **Do a lot of research** on other books
and the internet. Spot what they provide, and what they don't. How they
organize their content.

As you know, books are normally divided in chapters. It would be better
to know what are the chapters and what information they will contain, to
have a bird's eye view of what you are going to present. Chapters should
not be overly long, nor too short: from 10 to 30 pages is normally ok.
Don't expect to write chapter by chapter though. Sometimes you realize
that it's better to introduce some concept in an earlier chapter, so you
end up moving stuff around. Chapters should be self contained units: a
reader that already knows the concepts and language should be able to
use a chapter, or even a section of a chapter, as a quick reference for
a specific topic.

If you (hopefully) have collaborators, **partition the workload** so
that activities can take place in parallel. They can work on different
chapters, or they can work on different phases. Inconsistency could
result, but you will resolve it at a later stage.

Finally, **set deadlines**. Even if you don't have an agreement with the
editor. As books don't self-write automagically, you have to keep
working on it, in particular because if you stop for some time, then you
will have to check the status and recover, refresh your knowledge on the
subject, etc. This has a huge impact on productivity. **Once you start,
keep running. If you stop, you will never finish it.** Of course, there
will be times where your inspiration is reduced and you need to find
some new one, or you need to take a break to gather ideas, but don't
divert your attention on a different task. That's also what
collaborators are for. When you get into a bad corner, it is probable
that they won't. They will act as a mechanism that keeps the stuff
running even if you fail, and vice versa. Remember that you will
probably not meet deadlines, but this is an incentive to work harder
when a deadline looms.

Writing - the phases
--------------------

Phase 0: research
~~~~~~~~~~~~~~~~~

I marked this phase as zero because it's not part of the actual writing.
In some cases, the process of writing a book starts way before the
decision. Written notes, images, articles, are normally produced months,
even years by you and your collaborators. Gathering knowledge from
websites or other books, in order to see the big picture of an argument,
is also an activity that you don't do for writing a book, you do it for
something else (research, dealing with an actual problem, or plain fun).
The know-how you accumulate with years, together with your personal
experience, will be crystallized into your creation. Even if you work on
a novel, the ideas, events, ambient descriptions and plot details are
gathered along the time from newspapers, actual historical facts, cities
you visit, tales from your bedtime, personal or friend's experiences,
even dreams or nightmares.

Phase 1a: drafting
~~~~~~~~~~~~~~~~~~

Once you have done your research work, have the material, know more or
less what the argument is and how it will be organized, and found your
collaborators, you can start with the first phase: **drafting** of text.
You create a draft by throwing your concepts roughly. Do not expect your
book to grow out in final form while you write it. Instead, you will act
as a sculptor: you start with heavy hammering to create a rough shape,
then refine this shape with smaller and smaller instruments until you
start polishing your final opera with sandpaper. Pretending to write a
book word by word, start to finish in final form is like carving a human
statue from a marble cube with sandpaper. So, forget it.

You should better **use a collaboration writing tool** for initial
drafting. It is normally mandatory if you have multiple authors, but is
highly suggested even if you are alone. During the process, you will
need to check for differences, merge versions and so on. A
password-protected Wiki is a good idea. Using a source management tool
like svn is also a good idea, when you use pure text documents. No
problem. Content first, layout then.

**Resist the temptation to use Word (or OpenOffice)**. Disclaimer, I am
not a Word/OpenOffice expert and enthusiast at all, so I am both
ignorant and biased. However, in my opinion Word/OpenOffice are good for
letters or small stuff, but they do not scale very well with large and
complex contents. I am currently writing a 22 pages chapter with some
figures. The memory occupation is close to 1 Gb and the performances are
sluggish even on my MacBook Pro. Refresh times when I move paragraphs
around are in the order of one/two seconds, in particular when tracking
changes. Now imagine to put a whole book of more than 200 pages into
Word. If you split the book in different files, then you have to keep
the page numbering synchronized, and get crazy with the index, as Word
does not have a whole vision of the book. I must however point out that
other people I know did not experience problems even with hundreds of
pages. In any case, Word, and OpenOffice as well, do not produce "easy"
documents in terms of file format, so if you want to do comparison, or
maintain progressive changes, it is both difficult and consuming to
handle these formats. Finally, typesettings in Word/OpenOffice are very
limited, and learning the advanced features you need will require more
time than learning DocBook or LaTeX, which are way simpler, with
lightweight human-readable files, and with very nice features.

The preface is normally written last, when you know the contents and
book organization at best and you can finally write to the reader "I did
it".

Phase 1b: adding proper images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Either during research or drafting, you probably produced some sketches,
drawings or pictures that could be used to represent graphically a
central concept. **Producing images takes time**, more than writing
text. As a rule of thumb, you can consider an image to require the same
time needed to produce 5 pages of text.

**Consider buying a tablet**, it is way better than the mouse. Mousing
is very annoying for complex images, and sometimes nothing replaces the
accuracy of a Wacom tablet.

**Produce your pictures in vector graphics** when possible. PostScript,
PDF and SVG are *vector graphic formats*. JPG and PNG are *raster
formats*. Vector graphics represents entities as mathematical
descriptions. JPG and PNG represent stuff with pixels. This means that
if you want to increase the size of a vector image, it will still plot
beautiful. If you do the same with raster image, it will look ugly,
because the pixels must be scaled, and the operation leads to visible
distortions. Also, keep into account the degradation of JPG to achieve
better compression. If you have a photo, JPG is fine. If you have a
graph with sharp changes in colors, it will look horrible. Raster
graphics should be sized to be nice for a resolution of 300 dots per
inch (dpi), the resolution you normally use on printing paper, meaning
that to produce a 10 cm large image, you need approximately 1200 dots
("pixels") large. A screen has a resolution of 72 dpi, so make sure your
images are "huge", otherwise when brought to print they will look either
very tiny or blocky (if you scale them up).

Phase 2: rearranging and reordering
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once the content is there, you will start reading the book, and you will
realize that some concepts are ordered in the wrong way, or repeated, or
not explained at all. You will start rearranging, deleting,
reorganizing. This is the phase where you will mostly use version
tracking, because you will often compare the current version with
previous ones, eventually recovering old text.

Phase 3: proofreading
~~~~~~~~~~~~~~~~~~~~~

Once the book is written (or when parts of them are crystallized enough
to be considered stable) you can start proofreading. Proofreading is the
sandpaper phase. Of course, you can still go back, but this will
probably introduce some, eventually large, disruption.

**Prepare a document about writing standards**. Should "as we saw in
Chapter 2" have a capitalized C or not? Should enumerated lists start
with a capital letter or not? Should they end with a period, a
semicolon, or none? Having a big mix of all of them gives a highly
unprofessional look to your book. Check references to images, chapters
and citations. If you use LaTeX, you are probably accustomed to the
\\ref{} and \\cite{} mechanisms. They save you a lot of troubles, but it
could still happen that you make it wrong. Choose a proper labeling
scheme, so to be unique but easy to get. Check the font type and size
for uniformity. Not only in the text, but also in the pictures.
Proofread the captions, the pictures and the bibliography. Spot all the
terms that could have been written in an inconsistent manner. Terms
containing dashes are highly candidates. Note them down and then choose
a style to be consistent. If you are not a native speaker, have a native
speaker proofread the book. There are so many words, phrases and figure
of speech that must be seen into context. Be careful when multiple
persons are involved in the proofreading, as anyone has different
criteria, you could introduce a source of further randomization. Check
with your editor if they have special requirements for standard style.
Remember, the process is **iterative**.

In this phase, the text is more or less stable, unless cosmetic changes.
You can therefore perform indexing for your contents to produce the
index table.

Phase 4: layout
~~~~~~~~~~~~~~~

Editors normally provide you macros for layout purposes. Be sure to get
from the editor all the information about what tools are better for him
(and you) to go from draft to layout, and be sure to be proficient well
in advance.

If you put code in the book, write it in monospaced (like Courier) font.
I once saw a book with code written in Times New Roman, a proportional
font. It was horrible.

Phase 5: printing and publishing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Decide and agree with your editor if the book is in colors or black and
white well in advance. It is part of the contract, because the pricing
are different (paper quality and printer depend on this choice, and so
the cost). An alternative lower priced solution is to put pictures in
black and white, and provide colored pages as inserts, normally either
in the middle or at the end of the book. See the VTK manual for example.
I think this solution is horrible, but this is my personal taste.

If you use text quotations, pictures produced by others, or even by you
while employed for a company or institution, do **check about copyright
issues**. Request and obtain written permission from all the parties
involved in copyright issues, keep them, and hand them to the publisher
as well. Publisher's contracts do not generally protect you in case a
copyright infringement lawsuit is presented. It could happen that you
accidentally put a phrase someone else said without citing him, or you
grab a picture from the internet but you didn't realize the copyright
did not allow commercial use. So, be careful.

**Don't expect to become rich**. Of course it depends on the publisher,
but writers grab a very small percentage (around 10%) of the total cost
of the book. Publishers are not charities, and they have a high
investment risk. Not all the books return the investment, so they need
to distribute the risk, or they are out of business. Unless you write
Harry Potter, consider yourself lucky if you can buy a new hard disk at
the end of the year. The money are given to you generally by check, and
you are responsible for taxation.

Conclusions
-----------

This post is meant to give an overview of the process of book writing.
Of course there is much more, but this is part of "on-the-field"
experience, and nobody can tell you about it. As I am first in the task
myself, and we still have to conclude the process, I will have to add
more information to this post. Comments are welcome.
