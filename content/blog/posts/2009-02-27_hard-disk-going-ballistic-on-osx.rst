Hard disk going ballistic on OSX ?
##################################
:author: Stefano
:category: MacOSX

Sometimes it happens to me that my hard drive starts being accessed in a
very aggressive and noisy way. I found a couple of commands to see who
is responsible:

.. code-block:: console

    sudo fs_usage -f filesys

and also

.. code-block:: console

    sudo iotop

In the last one, you could get error messages like

.. code-block:: console

    dtrace: error on enabled probe ID ....

but if you check the whole output, you will see the bytes moved by some
processes.

In general, I saw that these frequent disk access are due to the mds
process, who is the responsible for updating the Spotlight indexes. The
process will last some minute.
