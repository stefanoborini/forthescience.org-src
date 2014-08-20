Include globali
###############
:date: 2007-08-11 16:07
:author: Stefano
:category: Informatica
:slug: include-globali

.. raw:: html

   <div>

A volte, durante la mia carriera di programmatore, ho fatto questo
errore: un grosso header globale che viene incluso da molti, se non
addirittura tutti i file del mio progetto. Questo file normalmente
contiene uno o più dei seguenti: variabili globali, define generali ed
enums, e altri include. Ho visto questo errore anche in codice di altre
persone, quando ho dovuto mantenere o modificare questo codice.

Gli apparenti vantaggi di questo approccio sono:

-  C'è un unico file centrale dove mettere e andare a caccia di
   variabili globali, e sono direttamente accessibili con un semplice
   include di questo file.
-  Si risparmia a scrivere, perché ``global.h`` include altri file,
   risparmiando la necessità di specificare questi file ogni volta
   esplicitamente.
-  Si ha la possibilità di mettere impostazioni a livello di
   applicazioni in un luogo facilmente accessibile.

Le ragioni principali per cui considero questa pratica un errore sono
tre. Come prima cosa, con un file include globale, tutti i file nel
progetto hanno una dipendenza verso questo file. Questa dipendenza è
dovuta solo all'organizzazione del codice, non ad un legame concettuale
delle entità che partecipano nel codice e a come interagiscono nel
design dell'applicazione. Se il linguaggio è compilato, una modifica al
file ``global.h`` porta a una ricompilazione totale dell'intero
progetto, anche di quei file che non sono attivamente dipendenti dalla
parte che è stata modificata. Se il linguaggio è interpretato,
l'esecuzione viene rallentata dal parsing di sezioni del codice che non
sono usate per il task richiesto.

Il secondo problema è che se l'include globale viene usato per includere
altri file, per ridurre la necessità di scrivere le singole inclusioni
ogni volta (includendo tutto quanto con una singola linea
``#include <global.h>``), si rende di fatto la vita del futuro
maintainer molto difficile: si perde l'informazione su ciò che è
veramente utilizzato nel codice e cosa no. Confrontate per esempio:

::

    globals.h:

    #include <foo.h>
    #include <bar.h>
    #include <baz.h>

    file.c:

    #include <global.h>

    <codice che usa solo foo.h>

con il più comunicativo

::

    file.c:

    #include <foo.h>

    <codice che usa solo foo.h>

Nel secondo esempio, ``bar.h`` and ``baz.h`` non sono inclusi. In questo
modo, si specifica esplicitamente che ``file.c ``usa solamente
``foo.h``, una informazione che era molto più difficile da ottenere dal
primo esempio, in particolare se il codice è complesso e non viene usato
alcun namespacing. Mantenere questa informazione in modo esplicito
semplifica il mantenimento dell'applicazione.

Per finire, il file globale tende a diventare un contenitore generico
per la fortemente sconsigliabile abitudine di usare variabili globali,
principalmente con l'idea di voler mantenere consistenza. Il file
diviene sempre più complesso e difficile da mantenere, con entità
completamente non correlate presenti nello stesso luogo.

Una situazione in cui un file globale di include è vantaggioso è lo
sviluppo di una libreria. Il file globale rende disponibile l'intera
libreria in un solo colpo, e ciò è appropriato dal momento che, in
genere, una libreria viene importata integralmente, o eventualmente una
sottounità concettualmente unica. Un esempio è ``#include <gl/gl.h>`` e
``#include <gl/glut.h>`` in openGL.

Riferimenti
-----------

-  `If (global header files are bad) then
   …? <http://groups.google.com/group/microsoft.public.vc.mfc/browse_thread/thread/f522d2e61e2acfd6/d71a6fad505053a2>`_
-  `global header
   file <http://groups.google.com/group/microsoft.public.vc.mfc/browse_thread/thread/91ecec41f230d7de/69eb355fe2513253>`_

.. raw:: html

   </div>

