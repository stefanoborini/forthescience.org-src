The von Neumann method revisited: a letter from a reader
########################################################
:date: 2013-11-06 18:42
:author: Stefano
:category: Probability
:tags: vonNeumann
:slug: the-von-neumann-method-revisited-a-letter-from-a-reader

It's always a source of extreme satisfaction when someone contacts you
about a post you made, and even more so when the mail actually answers
an open question I had about generalizing the von Neumann method. If you
don't recall what's about, it was about getting a fair coin throw from
an unfair coin. I wondered if it was possible to generalize it to any
number of faces (a coin is a 2 face die), but left the issue unsolved
and moved on.

A few days ago, I received a mail from `Albert
Rafetseder <http://cs.univie.ac.at/fc-team/infpers/Albert_Rafetseder/>`_,
which I copy here verbatim except for minor presentation adjustments.
Thank you Albert for the interest and the cool research

Hello Stefano,

by chance I came across your blog (via some Python PEP discussion you
participated in), finding `your post from August on the von Neumann
method <http://forthescience.org/blog/2013/08/05/fair-throw-from-an-unfair-coin/>`_.
I have pondered the question of a von Neumann die, too, and my solution
is this: Observe that the von Neumann coin method can extract an
unbiased coin flip from those strings of flips of length 2 that are
permutations on the set S of all possible outcomes of the biased coin S
= {0, 1}:

Permutations P(S) = {01, 10}.

There are Length(S)! possible permutations, i.e. the extracted unbiased
"random gadget" is a coin again.

If you consider a die with S = {1, 2, 3, 4, 5, 6}, then P(S) = {123456,
123465, 123564, 123546, .... }, and the extracted unbiased random gadget
is a Length(S)! = 6! = 720 facet thing. Unless, of course, you simply
group the permutations by some property to reduce the number of unbiased
results, e.g. grouping all 120 of them that had a "1" in the first roll,
and so on for every s in S.

By different grouping, I believe you could fabricate an unbiased random
gadget for every divisor of 720, too; similarly, you could use a biased
n-sided die rather than a six-sided one. And maybe you could increase
the efficiency of the scheme by taking into account how the pips on
opposing sides usually add up to seven ([that is:] probabilities of
opposing sides of a real die are somewhat complementary, although they
usually do not complement in an absolute sense, i.e. not q=1-p). This
conjecture is problematic: first, I have nothing to its support other
than that I think the physics would work this way in a real die. Second,
this (sub-)complementary property does not hold in general for a
simulated die as the probabilities for each side could be anything.
Third, no joy for "dies" with an odd number of sides, obviously.

As it often goes, you and I are not the first people to ponder this
question. Here are other's peoples approaches: `this one <http://pit-claudel.fr/clement/blog/generating-uniformly-random-data-from-skewed-input-biased-coins-loaded-dice-skew-correction-and-the-von-neumann-extractor/>`_
and especially `this <%20http://markus-jakobsson.com/papers/jakobsson-ieeeit00.pdf>`_
which lists a rich source of prior as well.

Also, optimization of von Neumann's coin method exist that don't throw
away so many 00 or 11 results. [`This method <http://www.eecs.harvard.edu/~michaelm/coinflipext.pdf>`_] has a
multi-level approach for extracting unbiased bits from longer strings of
flips, indeed asking at the very end "Now, how do you simulate an
unbiased die with a biased die". (Well, we know now). `This is a collection of
further reading material on Stackexchange
<http://math.stackexchange.com/questions/146605/improving-von-neumanns-unfair-coin-solution>`_.
I haven't read `this pdf <http://web.eecs.umich.edu/~qstout/pap/AnnProb84.pdf>`_, but it
seems to take up the efficiency/optimization idea too.

After stealing so much of your valuable time, allow me to mention `one further paper <http://www.siam.org/proceedings/soda/2011/SODA11_015_flajoletp.pdf>`_
that describes computations that can be done using random numbers of
unknown probability distribution. I personally find late Philippe
Flajolet's work always worth a read.

With that, thank you for your blog post reminding me of this interesting
topic (and stimulating me to write up my thoughts on it).

Best regards,
 Albert.

I will hopefully explore in more details with actual code after my next
series is finished. I built a NAS from scratch and I have a long series
of posts ready to ship starting next month. I want to keep the post
chain uninterrupted, but I really wanted to publish your mail as soon as
I could. For this reason, I couldn't research any further on your
insights, but they are definitely worth of interest for future posts.
Stay tuned!
