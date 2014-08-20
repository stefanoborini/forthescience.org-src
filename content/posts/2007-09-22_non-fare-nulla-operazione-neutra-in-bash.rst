Non fare nulla (operazione neutra) in bash
##########################################
:date: 2007-09-22 06:41
:author: Stefano
:category: bash @it, Non categorizzate
:slug: non-fare-nulla-operazione-neutra-in-bash

Oggi ho dovuto "non fare nulla" in script bash. In python esiste "pass"
per lo stessa finalità. In C, è possibile usare ";". Ho trovato `questo
post <http://ynniv.com/blog/2005/04/doing-nothing-in-bash.html>`_ di
qualcuno con lo stesso problema, che propone "sleep 0" o "A=0" come
operazioni neutre. Tuttavia, esiste un modo più appropriato: dal manuale
bash

    : [arguments]
     No effect; the command does nothing beyond expanding arguments
     and performing any specified redirections. A zero exit code is
     returned.

In pratica, un semplice ":" effettua esattamente ciò che mi serve.
