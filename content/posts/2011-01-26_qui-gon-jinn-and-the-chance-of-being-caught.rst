Qui-Gon Jinn and the chance of being caught
###########################################
:date: 2011-01-26 18:00
:author: Stefano
:category: Movies, Probability
:slug: qui-gon-jinn-and-the-chance-of-being-caught

I love the movie reviews made by
`RedLetterMedia <http://redlettermedia.com/plinkett.html>`_. They are
irreverent and to the point, and they are not only a real pleasure to
watch, but also an interesting insight in how movie critics is
performed. My favorite review is from `Star Wars - Episode 1 - the
Phantom Menace <http://redlettermedia.com/phantom_menace.html>`_. While
I agree with the points presented in the review about the movie, there's
one thing that got my attention.

In the first scenes of The Phantom Menace, Jedi Master Qui-Gon Jinn and
his apprentice Obi-Wan Kenobi need to escape from a ship and reach the
surface of a planet, where the mission is to warn of an incoming
invasion. Qui-Gon decides that the best strategy is to split and board
different ships.

Plinkett, the rather "characteristic" reviewer in RedLetterMedia's
creation, points out this strategy as totally stupid: splitting would
*"increase the probability of getting caught by 100 %"*. I disagree.
Before I explain why, we need to lay out some assumptions.

The first assumption is that a man hidden on a ship has a, say, 10 %
probability of being found by guards. The same probability is associated
to a roll of a 10 faces die and obtain, say, the number one.

The second assumption we make is that the probability of getting caught
stays the same regardless of the number of people boarding the ship. If
only Qui-Gon boards the ship, or if he is together with Obi-Wan, the
probability of being found is still 10 %. Apparently, this is not
entirely reasonable: more people equals more noise, but more people
means that if someone is discovered, the other one can kill the guard
before he sounds an alarm. So, let's assume that indeed the probability
stays the same regardless of how many people are on the ship (within
limits).

The third assumption is that ships don't communicate. Suppose Qui-Gon
and Obi-Wan board two different ships, and Qui-Gon gets caught. Under
our assumption, this fact will not increase the probability of Obi-Wan
getting caught. This is not true if, for example, Qui-Gon's ship
broadcasts a radio signal "we found an intruder, check your ships if you
find others", which would increase the probability of Obi-Wan getting
caught due to increased security. Let's assume that this does not
happen, because in the movie the ships perform a deorbit procedure,
which takes a small amount of time, not enough to coordinate such
communication.

Given these assumptions, is Qui-Gon Jinn strategy of splitting a good
one or a very bad one, as our reviewer says?

If they stay together, they have 10 % probability of getting caught,
e.g. not being able to carry out their warning mission. If they split,
there are four possible scenarios

   #. Qui-Gon is caught, Obi-Wan is caught. Mission fails.
   #. Qui-Gon is caught, Obi-Wan is NOT caught. Mission is successful.
   #. Qui-Gon is NOT caught, Obi-Wan is caught. Mission is successful.
   #. Qui-Gon is NOT caught, Obi-Wan is NOT caught. Mission is successful.

We need to find out what is the probability for each of these cases.

As we already said, the chance that a man on a ship is caught is assumed
to be 10 %. Due to the laws of probability, the chance of two
independent probability events A and B jointly occurring (such as
throwing two dice) is the product of the probabilities for each event

P(A **and** B) = P(A) P(B)

meaning that the chance of both Qui-Gon and Obi-Wan are caught (case 1)
is

P(Qui-Gon caught **and** Obi-Wan caught) = P(Qui-Gon caught)P(Obi-Wan
caught) =

= (10/100) \* (10/100) = (1/100) = 1 %

which is, basically, the probability of failure of their warning
mission. With the strategy of splitting, the probability of mission
failure goes from 10 % (both on the same ship) to 1 % (each on a
different ships). A relevant improvement! So Qui-Gon did the right
thing.

What about the other cases given above? The rules of probability say
that if the probability of getting something is X %, the probability of
NOT getting something is (100 - X) %. Consequently, the probability for
a single man NOT being caught is (100 - 10) = 90 %. With the same rule
of joint probability, we obtain that case 4 (the one happening in the
movie) has probability

(90/100) \* (90/100) = 81 %

and since probabilities must add up to 100 %, the remaining cases 2 and
3 are equivalent and get the rest, divided equally (100 - 81 - 1)/2 = 9
% each.

But wait. Cases 1, 2, 3 represent all those cases where their travel to
the surface of the planet is discovered. The probability that any of
these cases happen is, according to another law of probability, the sum
of each individual probability

P(Case 1 **or** Case2 **or** Case 3) = P(Case 1) + P(Case 2) + P(Case 3)
=

= 1 % + 9 % + 9 % = 19 %

If Qui-Gon and Obi-Wan were together, the probability of being found
would have been 10 %, but that would also ruin the warning mission. So
in this sense, Plinkett phrase of "increasing the probability of getting
caught by 100 %" is almost correct: the probability that someone gets
caught (either only one of them, or both) goes from 10 % (when both are
on the same ship) to 19 % (when they board separate ships), but only a
small fraction of that 19 % leads to a mission failure (both are
caught), while in the former case, the 10 % probability of being found
was also the probability of mission failure.

We can exaggerate this point with the following example. Suppose there
are one million Jedi. According to our rules, if they all board the same
ship, the probability of being found and therefore unable to carry the
message is still 10 %. If each Jedi uses a different ship, we have one
million ships with one Jedi each, and each of them has a 10 %
probability of getting caught. The probability that **not a single Jedi
is caught** is basically zero. It would be like throwing one million
10-faces dice and hoping not to get any "one". However, the probability
of **all of them getting caught** also goes to zero. It is like throwing
one million 10-faces dice and getting a "one" on all of them.

As the number of Jedi increase, it is basically guaranteed that **at
least one of them** is caught, so the probability of this event goes to
100 %, but as long as at least one Jedi is not caught, he will carry out
his warning mission successfully. Since the probability of mission
failure is also the probability of **all** Jedis being caught, and this
probability goes to zero, splitting is a completely sensible strategy
regardless of the number of Jedi... but maybe with one million Jedi the
most sensible strategy would be to start some serious lightsabering, and
roll the end credits after 3 minutes. Why didn't Lucas think of it? It
could not have been a worse movie !
