Upgrade del mio Mac a disco SSD == Performance uniche
#####################################################
:date: 2011-02-22 00:55
:author: Stefano
:category: Hardware @it, MacOSX @it, Software @it
:slug: upgrade-del-mio-mac-a-disco-ssd-performance-uniche

`|image0| <http://forthescience.org/blog/wp-content/uploads/2011/02/OWC.jpg>`_Ho
recentemente acquistato 240 Gigabytes di potenza, convenientemente
impacchettati in una scatoletta SATA 2.5". È un `Other World Computing
Mercury Extreme Solid State Hard
Drive <http://eshop.macsales.com/shop/internal_storage/Mercury_Extreme_SSD_Sandforce>`_.
Non ha parti mobili, consuma meno batteria ed è veloce. Incredibilmente
veloce. Questo coso è così veloce che apre le applicazioni ancora prima
di sollevare il dito dal touchpad dopo il click. È anche incredibilmente
caro.

Ho un MacBook 13" unibody primo modello, conosciuto anche come
MacBook5,1. Il disco rigido interno è facilmente accessibile,
immediatamente a fianco della batteria.

Per effettuare la migrazione dei miei dati, ho avuto bisogno di quanto
segue:

#. Il disco SSD ovviiamente
#. Un cacciavite piccolo, taglio Phillips
#. Un cacciavite `Torx <http://en.wikipedia.org/wiki/Torx>`_ (sono
   riuscito anche senza, usando una pinza)
#. Un case esterno USB-to-SATA.
#. `Carbon Copy Cloner <http://www.bombich.com/>`_. Il software è
   gratuito ma considerate una donazione. Li vale.

Avevo due o tre opzioni per effettuare la migrazione. Non ho il disco
OSX originale con me al momento (e in ogni caso non voglio effettuare
una reinstallazione completa in ogni caso), ma avevo un OSX del mio
iMac, che può essere utile come installazione d'emergenza nel caso
faccia qualche errore fatale. Ho tuttavia appreso presto che l'iMac
install DVD non funziona sul MacBook, anche se consente almeno di
effettuare operazioni di base, come partizionare il disco.

Il mio primo tentativo si è basato sull'assunto che fosse necessario
copiare fisicamente la partizione, a basso livello. La ragione è che
desideravo non effettuare il trasferimento a sistema attivo (cosa che
potrebbe dare origine a problemi), e in aggiunta non conosco esattamente
come funziona il boot su Mac, quindi assumevo di dover copiare anche il
boot record, come ho già fatto a suo tempo con Linux. In aggiunta,
spostare dati via USB richiede molto tempo, e trasferire 160 GB mi
avrebbe lasciato senza laptop per molto tempo. Di conseguenza, ho
sviluppato la seguente strategia:

#. Smontare il disco originale, e metterlo nel case esterno (confermo,
   il Mac può fare boot da USB, basta premere "C" al boot con il disco
   esterno USB alimentato e nessun DVD)
#. Montare il disco OWC nel laptop. Partizionare in due parti: una della
   stessa dimensione del disco originale, l'altra con lo spazio
   rimanente
#. Installare un sistema OSX minimale nello spazio rimanente, e iniziare
   a copiare a basso livello dal disco esterno con destinazione l'altra
   partizione dell'SSD, possibilmente usando la funzionalità restore di
   "Utility Disco".
#. Quando la copia è completata, fare il boot dalla prima partizione,
   cancellare la seconda partizione, e trovare un modo per allargare la
   partizione, includendo lo spazio vuoto.

Questo approccio si è dimostrato non fattibile, dal momento che il DVD
di OSX che possiedo non mi consente l'installazione. Tecnicamente, avrei
potuto effettuare più o meno lo stesso processo usando Utility Disco dal
DVD (come già detto, funziona), ma non ho avuto risultati a causa di un
errore di Utility Disco che dichiara di non essere in grado di allocare
memoria. In aggiunta, non riuscivo più ad effettuare il boot da USB dopo
questo evento. La ragione non mi è chiara. Per risolvere, ho
ripristinato il disco originale nel laptop, e deciso per una diversa
strategia, che si è poi rivelata efficace.

La strategia funzionante
------------------------

1. Preparare il nuovo disco
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Ho fatto il boot dal disco originale, e messo il disco SSD nel case
esterno. Era chiaro che avrei dovuto trasferire il sistema "a caldo",
quindi per minimizzare i problemi, ho creato un nuovo account con
privilegi di amministratore. Questo consente di non avere file attivi o
FileVaults montati, che potrebbe causare problemi.

Ho collegato il disco USB esterno, creato una nuova partizione unica con
Utility Disco, esattamente dello stesso formato del mio disco originale.
Questa informazione è reperibile da Utility Disco o dalla linea di
comando, con "diskutil info /dev/disk0s2". Dovrebbe risultare Journaled
HFS+, un tipo di partizione che consente il boot. **NON ABILITATE
case-sensitive**. Causa molti problemi, in particolare con File Vault
(`workaround esistono, ma non li ho
testati <http://www.frederico-araujo.com/2008/11/04/getting-filevault-on-a-hfs-case-sensitive-filesystem/>`_).
Non mi piacciono i filesystem case-preserving/case-insensitive, ma
purtroppo il Mac funziona così. Controllate inoltre che il tipo di
partizionamento sia "GUID\_partition\_scheme" (dovrebbe esserlo).

2. Copiare il sistema
~~~~~~~~~~~~~~~~~~~~~

Una volta formattato, ho avviato Carbon Copy Cloner, specificato come
sorgente il mio disco di sistema, la destinazione il disco SSD e
selezionato "backup everything". La documentazione di Carbon Copy Cloner
è perfetta. Per maggiori dettagli, è utile leggere la sezione "typical
usage cases" dove è disponibile una breve guida per il caso in esame.
Fare particolare attenzione che Carbon Copy Cloner riporti la copia
sulla partizione destinazione come bootable.

3. Scambiare i dischi
~~~~~~~~~~~~~~~~~~~~~

Carbon Copy Cloner copierà l'intero sistema sul disco esterno,
richiedendo alcune ore. A copia completata ho spento il computer,
ribaltato, e aperto il vano batteria. C'è una piccola vite Phillips che
mantiene il disco fermo con una piccola barra di plastica. Ho rimosso la
vite e la barra, quindi ruotato l'hard disk verso l'alto e staccato il
cavo SATA (con cautela). Ho quindi smontato il disco SSD dal case
esterno. Sui lati del disco originale ci sono quattro piccole viti Torx.
La barra in plastica di cui sopra serve a tenere il disco fermo
appoggiandosi a due di queste viti, mentre le altre due consentono al
disco di appoggiarsi e ruotare a cardine per una buona estrazione dal
vano batteria. Ho rimosso queste viti per trasferirle sul disco SSD, ma
non avendo un cacciavite Torx, ho usato un paio di pinze. Ho quindi
ricollegato il cavo SATA al disco SSD, posizionato nel comparto,
riavvitato la barra di plastica e la vite Phillips, chiuso il laptop,
girato e avviato. Nota Bene: la comune saggezza popolare dice "prima
controlla, poi chiudi", ma in questo caso l'operazione è relativamente
semplice e ho preferito quindi rimettere tutto a posto subito. Inoltre,
la batteria non è fissa senza il coperchio del vano batteria, che va
chiuso in ogni caso (o la batteria va tenuta a parte temporaneamente).

4. Fare boot col nuovo disco
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Il sistema si è avviato senza grossi problemi. Non veloce come speravo,
ma decisamente più veloce che con il disco originale. La vera differenza
è visibile al login e al lancio delle applicazioni. Mi servivano 10-15
secondi per avere il desktop, mentre ora il login è completo dopo solo
un paio di secondi.

5. Conclusioni
~~~~~~~~~~~~~~

Ho tenuto il disco originale nel case USB. Posso formattarlo e
riutilizzarlo come disco esterno, o posso tenere un backup di sicurezza.
Preferisco quest'ultima opzione.

.. |image0| image:: http://forthescience.org/blog/wp-content/uploads/2011/02/OWC.jpg
