Can't grok grok. Back to Django.
################################
:date: 2009-10-08 15:29
:author: Stefano
:category: Python, Web frameworks
:slug: cant-grok-grok-back-to-django

I wanted to use Grok for my future development, so I just spent a week
trying to do porting of a project from
`Django <http://www.djangoproject.com/>`_ to
`Grok <http://grok.zope.org/>`_. I had to back off.

Grok is very powerful without doubt. However, the learning curve is
steep, and I am not talking about "mountain trekking" steep, I'm talking
about "walking on the ceiling" steep. I was able to port basic
functionalities, but I felt less and less confident about future
development needs. With some effort, I could have learned how things
work, but presenting such hurdles to any other future collaborator would
have made things more complex both for me and them.

What I find most difficult is the logic. Innocuous python refactoring
can have disruptive results (e.g. nothing works anymore). The error
messages are difficult to understand because in order to understand them
you have to know how things work. You have a lot of magic places and
formulas you have to know and adhere to, and things are easy until you
stay within the limits of this magic. If you want to leave this path,
even just by a little, you are faced with the need to study additional
libraries you didn't even know they existed, and in some case are not
under the grok framework package. Interrelationships are tight, but it's
difficult to understand how things interact. You cannot "evolve" your
understanding step by step, and until you don't get a large part of the
component network, you will probably be reluctant to even rename a class
or a method. It's like walking on a minefield, with the difference that
the minefield is n-dimensional: you do have a lot of power, but that
comes with a huge cost in manhours attached. Lack of a bird's eye view
of the framework and an intermediate step between the tutorial and the
developer's documentation is another big issue. Not many examples can be
found on the internet, and the ones that are available, are either too
simple, or too complex, hardly explaining the reason behind particular
lines of code.

Please don't interpret this post as a rant against Grok. Grok is not bad
at all, it's simply big. As a consequence, it's difficult to handle for
a single developer, unless he spent a fair amount of time studying it,
knowing all its magic, when this magic works, and when it doesn't.This
goes against one of my needs for the project: easy to understand, learn
and modify by third parties.

I would like to thank the people at #grok on freenode IRC, in particular
trollfot (author of the `dolmen
project <http://gitweb.dolmen-project.org/>`_, as far as I got) and
goschtl. They were very helpful and friendly.
