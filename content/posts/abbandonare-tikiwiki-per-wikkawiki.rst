Abbandonare TikiWiki per WikkaWiki
##################################
:date: 2007-09-09 08:01
:author: Stefano
:category: Amministrative
:slug: abbandonare-tikiwiki-per-wikkawiki

.. raw:: html

   <div>

Sto pensando di rimuovere TikiWiki e rimpiazzarlo con WikkaWiki.

Le ragioni dietro la mia iniziale scelta di TikiWiki erano:

-  Pensavo fosse una buona idea avere un blog e un wiki sotto la stessa
   applicazione.
-  TikiWiki veniva fornito automaticamente dal mio hosting, bluehost,
   quindi avevo una cosa in meno di cui preoccuparmi, in particolare
   perché a quel tempo non avevo accesso shell, e quindi non potevo
   installare altri pacchetti, se non via ftp.
-  TikiWiki ha, secondo
   `wikimatrix.org <http://www.wikimatrix.org/show/TikiWiki>`_, sia ACLs
   per pagina che integrazione LaTeX, due features che mi servivano.

Tuttavia, mentre procedevo mi sono reso conto che non era il prodotto
che mi serviva:

-  Per fare blogging, WordPress è decisamente migliore, sia per chi
   scrive che per chi legge, perché semplice e focalizzato allo scopo.
-  Tikiwiki richiede molte risorse. Ho ottenuto frequenti “CPU quota
   exceeded” navigando il wiki da solo mentre lavorando, in modo
   leggero, in ssh al contempo.
-  Nonostante il team TikiWiki `proponga uno standard per la sintassi
   wiki <http://tikiwiki.org/tiki-index.php?page=RFCWiki>`_ non
   standardizzano il formato di link interno utilizzato dal wiki più
   usato in rete, ovvero Wikipedia/Mediawiki, promuovendo invece la loro
   sintassi. Standard in principio dovrebbero accettare e formalizzare,
   pulire ed estendere correnti pratiche de-facto, e l'approccio a
   parentesi quadre appartiene sicuramente a questo caso. Non ho
   effettuato ricerca sul loro punto a riguardo, quindi potrebbero avere
   delle buone ragioni. Inoltre, la loro proposta è una Request For
   Comment, quindi è possibile vengano effettuate modifiche. In ogni
   caso, la sintassi di TikiWiki non mi soddisfa, in particolare per
   esigenze di portabilità.
-  Non mi piace il suo look-and-feel in genere. Ho provato molti temi,
   ma nessuno soddisfa i miei requisiti di semplicità e pulizia.
   L'interfaccia è molto confusionaria e difficile da usare,
   amministrare e modificare.
-  L'integrazione LaTeX è disabilitata per ragioni di sicurezza. Ho
   dovuto trafficare un bel po', e ho dovuto sviluppare il mio wrapper
   personale per farlo funzionare. Penso di aver già speso 20 ore, ma
   non sono ancora soddisfatto al 100 %.
-  Il meccanismo di ACL è abbastanza complesso, e funziona come un
   sistema a capability. Capabilities possono essere assegnate a diverse
   categorie di utenti. Sfortunatamente, sembra che si possa assegnare
   capabilities (come per esempio "consenti lettura di pagine") a una
   categoria di utenti (per esempio, utente anonimo), ma non è possibile
   rimuovere capability assegnate globalmente su pagine specifiche. Per
   quello che vedo, per rendere una pagina specifica non leggibile,
   bisogna togliere la capability in lettura all'utente anonimo
   (rendendo l'intero wiki non leggibile agli utenti occasionali) e poi
   assegnare ad ogni pagina la leggibilità per anonymous. Ciò mi pare
   molto strano, ma google non aiuta, e WikkaWiki ha un metodo
   decisamente più semplice.

Adorerei usare Mediawiki, ma purtroppo non è studiato per accurato
management dell'accesso, qualcosa che considero importante per un
eventuale gruppo di lavoro. Ho installato WikkaWiki perché ho già una
buona esperienza ad usarlo. Spostare tutto sarà abbastanza impegnativo.
Dovrò installarlo, portare le pagine da Tiki, cambiare la sintassi wiki,
e implementare l'interfaccia LaTeX.

.. raw:: html

   </div>

