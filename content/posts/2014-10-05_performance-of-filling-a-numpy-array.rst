Performance of filling a numpy array
####################################
:author: Stefano
:category: Python
:tags: numpy, Performance

I just noticed this interesting piece of trivia. Apparently it's much faster to
create a zeros array and filling the individual values, than creating an array
from scratch by passing a list. This program

.. code-block:: python

   import numpy                                                                                                                                          
   import time                                                                                                                                           
                                                                                                                                                         
   before = time.time()                                                                                                                                  
   for i in xrange(10000000):                                                                                                                            
       a=numpy.zeros(6)                                                                                                                                  
       a[0] = 1.0                                                                                                                                        
       a[1] = 2.0                                                                                                                                        
       a[2] = 3.0                                                                                                                                        
       a[3] = 4.0                                                                                                                                        
       a[4] = 5.0                                                                                                                                        
       a[5] = 6.0                                                                                                                                        
   print time.time() - before                                                                                                                            
                                                                                                                                                         
   before = time.time()                                                                                                                                  
   b=[ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0]                                                                                                                     
   for i in xrange(10000000):                                                                                                                            
       a=numpy.array(b)                                                                                                                                  
   print time.time() - before 


outputs these times on my machine

.. code-block::

   11.7937290668
   49.3275549412

I don't know if this scales up, but for small arrays, creating a zero array and
then assigning seems a better strategy.
