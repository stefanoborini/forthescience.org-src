Modificare wikkawiki
####################
:date: 2007-10-13 15:51
:author: Stefano
:category: Amministrative, Informatica
:slug: modificare-wikkawiki

Wikkawiki è un software molto interessante: minimale ma potente, e
soprattutto semplice da modificare. Una necessità che mi deriva da:

-  Vorrei avere spazi nei nomi delle pagine e maiuscole/minuscole in
   formato libero. Wikkawiki necessita pagine con nome standard in
   CamelCase. Ciò non è piacevole, specie con nomi di pagina lunghi;
-  Wikkawiki non supporta pagine multiple. Ciò implica che pagine molto
   lunghe non possono essere spezzate facilmente, rendendone
   difficoltosa la lettura. Tikiwiki supporta questo concetto, ma né
   wikkawiki né mediawiki lo supportano.
-  Mi serve supporto LaTeX. Mediawiki usa un plugin scritto in OCaml.
   Non voglio aggiungere supporto OCaml, perché non ho competenza con
   questo linguaggio e se qualcosa non funziona non mi è possibile
   risolvere il problema velocemente.

Al momento, ho quasi terminato il supporto per gli spazi nei nomi, anche
se vorrei poter rimpiazzare gli spazi con underscore, come fa MediaWiki.
Ciò migliora la leggibilità dell'indirizzo web. Per il supporto LaTeX
posso probabilmente riciclare un hack che avevo sviluppato per Tikiwiki.
Non perfetto, ma funziona. Supporto pagine multiple, non penso sia
difficile (spero). Non penso di rendere queste modifiche pubbliche,
principalmente perché non le considero stabili o ben documentate. Forse
dopo qualche test e pulizia, posso renderle scaricabili.

Inizierò a scrivere sul wiki appena ho supporto per pagine con lo
spazio. Il resto può essere aggiunto dopo. Sfortunatamente ho molte cose
da fare, e ho una coda di impegni molto lunga.
