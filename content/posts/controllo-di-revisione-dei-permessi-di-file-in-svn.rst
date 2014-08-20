Controllo di revisione dei permessi di file in svn
##################################################
:date: 2007-08-29 08:32
:author: Stefano
:category: Informatica
:slug: controllo-di-revisione-dei-permessi-di-file-in-svn

Possono esistere casi nei quali è importante tenere in controllo di
revisione i permessi di un dato file o di una directory. Un caso può
essere, ad esempio, avere una directory di cache per immagini
autogenerate da una applicazione web. La cache deve essere aperta alla
scrittura per il webserver, dal momento che le immagini sono generate da
uno script PHP.

Sfortunatamente, subversion non consente di fare controllo revisione dei
permessi. Come conseguenza, quando la directory di cache viene estratta
con un checkout dal repository, i permessi sono ristretti al solo utente
che effettua il checkout, e il server web non può scrivere nella cache.
Esistono diverse soluzioni per questo problema:

.. raw:: html

   <div>

#. creare uno script che va lanciato ogni volta che si effettua checkout
   del codice. Questo script controlla i permessi di file e directory e
   li imposta correttamente. Vantaggi: veloce da implementare.
   Svantaggi: facile da dimenticare, e deve essere mantenuto per
   eventuali cambiamenti futuri.
#. usare `asvn
   wrapper <http://svn.collab.net/repos/svn/trunk/contrib/client-side/asvn>`_
   per dotare subversion di una feature che consenta la gestione dei
   permessi attraverso le proprietà. Vantaggi: approccio pulito.
   Svantaggi: apparentemente nessuno.
#. effettuare il checkout come utente webserver. Vantaggi:
   concettualmente semplice. Svantaggi: bisogna avere accesso all'utente
   webserver, e se esiste una falla di sicurezza, il webserver può
   modificare qualunque file o scrivere in qualunque directory.

Sono certo che esistano altre soluzioni, ma al momento non ne sono al
corrente. Ho deciso per la prima soluzione, perché non voglio introdurre
asvn nel sistema al momento. Un sistema a script scala appropriatamente
per il lavoro che devo effettuare.

.. raw:: html

   </div>

