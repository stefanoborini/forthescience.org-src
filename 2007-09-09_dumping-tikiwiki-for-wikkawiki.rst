Dumping TikiWiki for WikkaWiki
##############################
:author: Stefano
:category: Administrative

I am planning to dump TikiWiki and replace it with WikkaWiki.

The reasons behind my initial choice of TikiWiki were:

-  I thought it was a good idea to have blog and wiki in one, uniform
   place.
-  TikiWiki was automatically provided by bluehost, so I had something
   less to worry about, in particular because at that time I had no
   shell access, and I could not install other packages (except by using
   ftp).
-  TikiWiki had, according to
   `wikimatrix.org <http://www.wikimatrix.org/show/TikiWiki>`_, both
   page ACLs and LaTeX integration, two features I needed.

However, the more I went on, the more I realized that this was not the
right product for my needs and resources:

-  For blogging, WordPress provides a better user experience (both for
   the editor and for the reader) because of its simplicity and focus on
   the task.
-  It looks very resource demanding. I obtained "CPU quota exceeded"
   messages from bluehost just by browsing the wiki by myself while also
   lightly working in ssh.
-  Despite the fact that the TikiWiki team is `proposing a standard for
   wiki syntax <http://tikiwiki.org/tiki-index.php?page=RFCWiki>`_, they
   fail to standardize the internal link syntax used by the most used
   wiki on the internet, namely Wikipedia/Mediawiki. Instead, they
   promote their own syntax. Standards should in principle accept,
   formalize, clean up and extend current de-facto practices, and the
   square parenthesis approach definitely is. I haven't done research
   about their position and rationale about this matter, so eventually
   they could have some good points. Also, it is a Request For Comment,
   so there is space for changes. In any case the current TikiWiki
   syntax definitely does not match my personal taste for page
   portability.
-  I don't like its general look-and-feel. I tried many different
   themes, and none of them matched my requirements for simplicity and
   cleanness. The interface itself is very cluttered and difficult to
   use, administer, and change.
-  The LaTeX integration is disabled due to security issues. I had to
   tinker a lot, and I developed my own wrapper to make it work. I think
   I spent at least 20 hours on it, and I am still not 100 % satisfied.
-  The ACL mechanism is quite complex. It is shaped as a capability-like
   system, where capabilities are assigned to user categories.
   Unfortunately it looks like you can only grant capabilities (for
   example, "allow to view pages") to a user category (for example,
   Anonymous), but you cannot remove globally granted capabilities on a
   per-page basis. From what I understand, if you want to make a
   specific page unreadable you have to remove the global read
   capability for Anonymous (temporarily making the whole wiki
   unreadable to casual users), and then scout all the pages in your
   wiki to reallow Anonymous. This looks very strange to me, but google
   does not help, and WikkaWiki has a way simpler system.

I would love to use Mediawiki, but unfortunately it is not studied for
fine-grain management of ACLs, something I consider important for an
eventual group work. I plan to deploy WikkaWiki because I already had a
good experience with it. Doing the porting will be time consuming. I
have to install it, port all the pages from Tiki, change the wiki
syntax, rehack the LaTeX support.
