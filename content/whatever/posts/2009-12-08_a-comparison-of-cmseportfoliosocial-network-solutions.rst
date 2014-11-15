A comparison of CMS/EPortfolio/Social Network solutions
#######################################################
:author: Stefano
:category: Content Management

I am currently looking for a good choice of Content Management
System/EPortfolio/Social Network tool to start the activity on
wavemol.org . I don't know exactly what kind of information wavemol will
provide, although I know the argument: theoretical and computational
chemistry. I believe that the main objectives of wavemol should be:

-  Provide community tools like a **blog** to communicate the recent
   news and facts about the community
-  A **wiki** to provide documentation
-  The possibility to login and have a **personal page/blog**
-  **... store relevant files** (such as pdf)
-  .... and keep in touch with people through **workgroups**, and
   **forums**
-  It must support LaTeX formula editing and display.
-  **It must be easy** (to use, and to administer)

So long for the features, but I ask for more

-  It must be opensource
-  It must run on PHP/MySQL
-  Should have good themes. CSS is not my favourite tool, and my sense
   of style is horrible.

I will update this post as I try more and more. Stay tuned. At the end,
I will choose what I consider the best option from the ones I tried. All
my experiments were made in one hour of tinkering (for some, a bit
more). Although some would consider this time probably not enough, I
want to have something easy with a gradual learning curve. If the
developers had this focus in mind, it gives me a clear impression of the
kind of care I can find in the product.

I will update this post as I try more solutions, stay tuned.

`Drupal <http://drupal.org>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The first one I tried is Drupal. Drupal is definitely very customizable.
There is a plethora of plugins to address all the requirements I have,
and then some. It is a very mature and stable platform, with a very
beautiful and pleasant default theme, garland. I actually started
putting content into it, when I realized that it's not what I want.
Albeit all the pros I gave above are a good fit, Drupal appears to be
very difficult to use not only for the administrator, but also for the
users. A lot of options are always available even when the context does
not make perfect sense. The forums are not what I expected. Creating
content is not immediate, not at the level of mediawiki or wordpress.
Administration is very fine grained, too fine grained I would say.

`Wordpress-MU <http://mu.wordpress.org/>`_ + `bbPress <http://bbpress.org/>`_ + `buddypress <http://buddypress.org/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This solution is definitely interesting, although is probably not
powerful enough for my aim. Wordpress-MU allows every user to have his
own personal blog, bbPress provides a very pleasant forum experience,
and buddypress adds social network features. The main issue with this
solution is the lack of an integrated wiki, and the very limited set of
themes available, with the default one not very professional.

A `useful page is
this <http://lesleyharrison.wordpress.com/category/book-resources/beginners-guide-to-wordpress-mu-and-buddypress/>`_.

`Joomla <http://www.joomla.org/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

My experience with Joomla is kind of strange. I was not able to do
anything with it. I found difficult to do even minimal changes on the
default page. I set it aside very soon.

`Mahara <http://mahara.org/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mahara is astonishing. Very nice design, very nice themes. It allows
every user to create "Artifacts" (any kind of content, from blogs to
files) and make them visible and accessible through personalized
"views". You can create workgroups, and create discussion forums. At the
moment, it seems a very promising solution, but I am currently facing
two issues: first, it deals very badly with the settings I currently
have about email sending via php. I did not have time to check, but
working around it could be a problem, or maybe not. The second issue I
see is the lack of a wiki. Mahara seems very socially oriented, but as a
network of singles. There's, as far as I see, no common area where to
paint. I could be wrong however. Something I noted is that the Mahara
wiki uses `Mindtouch <http://www.mindtouch.com/>`_.

`ELGG <http://elgg.org>`_
~~~~~~~~~~~~~~~~~~~~~~~~~

At the moment, ELGG is the best of the lot. It matches all my
requirements. It is very easy to use, and very extensible, with a broad
range of plugins available. I am using 1.6.1, and it seems very
promising. I think I will definitely use it, and stop my search.

The other ones
~~~~~~~~~~~~~~

During my browsing I also got my attention on
`ImpressCMS <http://www.impresscms.org/>`_ and
`AROUNDme <http://www.barnraiser.org/aroundme>`_. I did not try them,
though.
