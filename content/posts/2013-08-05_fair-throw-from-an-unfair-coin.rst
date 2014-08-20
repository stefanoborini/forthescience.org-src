Fair throw from an unfair coin
##############################
:date: 2013-08-05 11:07
:author: Stefano
:category: Probability
:slug: fair-throw-from-an-unfair-coin

Imagine you are given an unfair coin. You don't know how unfair it is,
nor which side (head or tails) is produced more frequently than the
other. How do you perform a fair throw with it ?

Enter the von Neumann method. It's really simple: throw the coin twice.
If the results are the same, discard the result; if the results are
different, choose the first one.

How does it work ? It's rather easy. Suppose the coin returns head 90 %
of the times, and the remaining 10 % returns tail. We give actual
probabilities here for the sake of discussion, but you don't need to
know how unfair is the coin in order to apply this method. If you throw
the coin two times

-  the probability of throwing two times head is 0.9 \* 0.9 \* 100 = 81
   %
-  of getting two tails is, of course 0.1 \* 0.1 \* 100 = 1 %.
-  the probability of throwing tail followed by head is 0.1 \* 0.9 \*
   100 = 9 %
-  and finally, the probability of throwing head followed by tail is 0.9
   \* 0.1 \* 100 = 9 %.

You can see how the probabilities of the mixed events (Tail-Head and
Head-Tail) is the same. If you discard homogeneous cases Head-Head and
Tail-Tail, accept only the mixed results and pick one of the throws as
the right one, you will obtain the same probability of obtaining a head
and tail, that is 50/50, a fair coin. The only problem with this method
is that you may have to discard a very high number of throws. The method
will be slower to yield a result, but the result is guaranteed to be
fair. In the limit of a completely unfair coin that returns the same
face every time, you will never get a result. I wonder how this can be
generalized to an unfair n-faces die.
