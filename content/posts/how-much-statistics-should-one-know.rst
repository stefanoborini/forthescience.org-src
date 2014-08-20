How much statistics should one know ?
#####################################
:date: 2010-01-11 08:29
:author: Stefano
:category: Statistics
:slug: how-much-statistics-should-one-know

I just wrote an answer to this `very interesting
question <http://stackoverflow.com/questions/2039904/what-statistics-should-a-programmer-or-computer-scientist-know>`_
on Stackoverflow. Now, as a disclaimer, I'm not an expert in statistics, but I
did enough statistics to "know the beast", or at least what are the dangers. I
will rearrange my answer for this post, to address the more general case.

The main issue is "How much statistics should *any* person know?". In
our life, we all deal with statistics, willful or not. Polls, weather
forecast, drug effectiveness, insurances, and of course some parts of
computer science. Being able to critically analyze the presented data
gives the line between picking the right understanding out of them or
being scammed, tricked, or misdirected.

.. raw:: html

   <div>

Technically, the following points are important:

-  `Mean <http://en.wikipedia.org/wiki/Mean>`_,
   `median <http://en.wikipedia.org/wiki/Median>`_, `standard deviation
   of a
   sample <http://en.wikipedia.org/wiki/Sample_standard_deviation>`_,
   and the difference between
   `*sample* <http://en.wikipedia.org/wiki/Sample_population>`_ and
   `*population* <http://en.wikipedia.org/wiki/Statistical_population>`_
   (this is particularly important)
-  The
   `distributions <http://en.wikipedia.org/wiki/Statistical_distribution>`_,
   and why the `Gaussian
   distribution <http://en.wikipedia.org/wiki/Gaussian_distribution>`_
   is so important (the `Central Limit
   Theorem <http://en.wikipedia.org/wiki/Central_limit_theorem>`_)
-  What it is meant with `Null Hypothesis
   testing <http://en.wikipedia.org/wiki/Null_hypothesis>`_.
-  What is `variable
   transformation <http://stattrek.com/AP-Statistics-3/Random-Variable-Transformations.aspx?Tutorial=Stat>`_,
   `correlation <http://en.wikipedia.org/wiki/Correlation_and_dependence>`_,
   `regression <http://en.wikipedia.org/wiki/Regression_analysis>`_,
   `multivariate
   analysis <http://en.wikipedia.org/wiki/Multivariate_analysis>`_.
-  What is `Bayesian
   statistics <http://en.wikipedia.org/wiki/Bayesian_inference>`_.
-  `Plotting <http://en.wikipedia.org/wiki/Plot_%28graphics%29>`_
   methods.

All these points are critical if you want to interpret anything with a
grain of salt. Yet, they are not the whole story. Let's face it.
Statistics needs understanding before anything can be inferred,
otherwise wrong conclusions will be obtained. I will give you some
examples:

-  The evaluation of the null hypothesis is critical for testing of the
   effectiveness of a method. For example, if a drug works, or if a fix
   to your hardware had a concrete result or it's just a matter of
   chance. Say you want to improve the speed of a machine, and change
   the hard drive. Does this change matters? you could do sampling of
   performance with the old and new hard disk, and check for
   differences. Even if you find that the average with the new disk is
   lower, that does not mean the hard disk has an effect at all. Here
   enters Null hypothesis testing, and it will give you a probability,
   not a definitive answer, like: there's a 90 % probability that
   changing the hard drive has a concrete effect on the performance of
   your machine. Depending on this value, you could decide to upgrade
   hard drives to all 10.000 machines in your server farm, or not.
-  Correlation is important to find out if two entities "change alike".
   As the internet mantra "`correlation is not
   causation <http://en.wikipedia.org/wiki/Correlation_does_not_imply_causation>`_"
   teaches, it should be taken with care. The fact that two random
   variables show correlation does not mean that one causes the other,
   nor that they are related by a third variable (which you are not
   measuring). They could just behave in the same way. Look for `pirates
   and global
   warming <http://en.wikipedia.org/wiki/Flying_Spaghetti_Monster#Pirates_and_global_warming>`_
   to understand the point. A correlation reports the possible presence
   of a signal, it does not report a finding.
-  Bayesian inference. We all know Bayesian-based spam filter, but
   there's more, and it's important to see how human decisions and mood
   can be influenced by a clear understanding of data analysis. Suppose
   someone goes to a medical checkup and the result tells him/her has
   cancer. Fact is: most people at this point would think "I have
   cancer" without any doubt. That's wrong. A positive testing for
   cancer moves your probability of having cancer from the baseline for
   the population (say, 12 % of women have the `chance for breast
   cancer <http://www.cancer.gov/cancertopics/factsheet/Detection/probability-breast-cancer>`_)
   to a higher value, which is not 100 %. How high is this number
   depends on the accuracy of the test. If the test is lousy, you could
   just be a false positive. The more accurate the method, the higher is
   the skew, but still not 100 %. Of course, if multiple independent
   tests all confirm cancer, then it's very probable it is there, but
   still it's not 100 %. maybe it's 99.999 %. This is a point many
   people don't understand about bayesian statistics.
-  Plotting methods. That's another thing that is always left
   unattended. Analysis of data does not mean anything if you cannot
   convey effectively what they mean via a simple plot. Depending on
   what information you want to put into focus, or the kind of data you
   have, you will prefer a xy plot, a histogram, a violin plot, etc...
   Each data insight has a different preferred plot, exactly as each
   conversation has a different appropriate wording.

.. raw:: html

   </div>

.. raw:: html

   <div>

Statistics enter our lives every time we have to distill an answer or
compare numerical (or reduced to numerical) data from unreliable
sources: a signal from an instrument, a bunch of pages and the number of
words they contain and so on. Think for example to the algorithm to
perform click detection on the iphone. You are using a trembling, fat
stylus (also known as finger) to point to an icon which is much smaller
than the stylus itself. Clearly, the hardware (capacitive touchscreen)
will send a bunch of data about the finger, plus a bunch of data about
random noise from the environment. The driver must make sense out of
this mess and give you a x,y coordinate on the screen. That needs a lot
of statistics.

An additional issue is sampling. Sampling actually comes first than
statistical analysis: you collect a sample, reduce it to a number, and
perform statistics on this number (among many others). Sampling is a
fine and delicate art, and no statistics will correct, or even point out
at an incorrect sampling, unless you act smart. Sampling introduces
bias, either from the sampler, the sampling method, the analysis method,
the nature of the sample, or the nature of nature itself. A good sampler
knows these things and tries to reduce unwanted bias as much into a
random distribution, so to treat it statistically.

As a closing remark, statistic is among the most powerful allies we have
to understand the noisy universe we live in, but it's also a very
dangerous backstabber enemy, if not used properly. Willfully misusing it
is definitely evil.

.. raw:: html

   </div>

