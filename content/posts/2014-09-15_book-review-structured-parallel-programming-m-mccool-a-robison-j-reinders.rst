Book review "Structured parallel programming" - M. McCool, A. Robison, J. Reinders
##################################################################################
:author: Stefano
:category: Books, Parallel Programming
:tags: 

I just finished  `Structured parallel programming
<http://www.amazon.co.uk/Structured-Parallel-Programming-Efficient-Computation/dp/0124159931>`_,
by M. McCool, A. Robison, J. Reinders. Personally, I am not enthusiastic about
this book, and not because of lack of quality, but because I am probably not
the right target.

The book presents typical patterns for parallel programming (map, reduce, scan)
and in particular as implemented by Cilk Plus, ArBB, OpenMP, TBB and
OpenCL. Given that I already know most of the parallel programming patterns, I
didn't really learn anything new on this regard, but it was a good refresh
nevertheless. The book strong point is, in my opinion, the detailed exposition
of how the patterns are implemented by the five different parallel programming
environments, something that is invaluable if you already know one environment
(say, OpenMP) and you want to try or migrate something else. The code snippets
are clear, to the point, and in C++.

If you are completely new to parallel programming, this book is probably not
for you. If you want to learn strengths and shortcomings of the different
parallel environments, compare their syntax, get an idea of alternative
solutions, and an overall refresh of your already solid background in parallel
programming, I definitely recommend it.

