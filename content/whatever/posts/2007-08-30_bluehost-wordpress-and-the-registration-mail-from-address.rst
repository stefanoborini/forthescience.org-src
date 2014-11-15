Bluehost, wordpress and the registration mail From address
##########################################################
:author: Stefano
:category: Administrative, Computer Science

During the setup of wordpress, I realized that registration emails were
sent out with a strange login(at)box.bluehost.com, instead of something
more user friendly, like wordpress(at)thesite. A little investigation
in the sources lead to the finding that wordpress uses the php ``mail()``
call, and the From address is correctly set to wordpress(at)thesite,
therefore the wordpress setup was not responsible. After some tinkering
I found the solution.

Basically, when you set up wordpress on bluehost, the From address in
the mail your users will receive when they register is the default
"catch all" provided by bluehost as your login **unless** you create a
wordpress@yoursite email address from the cPanel. After you create the
wordpress mail account, the registration mail will be sent out as
wordpress@yoursite with no further intervention.
