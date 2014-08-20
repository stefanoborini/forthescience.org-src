Namespacing di tabelle nei database
###################################
:date: 2007-09-13 15:27
:author: Stefano
:category: Non categorizzate
:slug: namespacing-di-tabelle-nei-database

.. raw:: html

   <div>

Stavo cercando di capire se in qualche database esista la possibilità di
fare namespacing per i nomi di tabelle, ma google non ritorna alcuna
informazione utile. Ciò è strano. In MySQL, le tabelle possono avere un
namespacing specificando il database come prefisso (come in
dbname.tablename), ma non è possibile, a quanto mi è dato vedere,
definire qualcosa come dbname.namespacename.tablename. Questo mi
consentirebbe di raggruppare tavole correlate all'interno di uno stesso
namespace, e allo stesso tempo mantenerle tutte nello stesso database.
Questa feature sarebbe utile anche durante il refactoring dello schema
del database, o manipolando diverse versioni dei dati.

Mi domando la ragione dietro l'assenza di questa feature. Forse, la
feature esiste, ma il nome è diverso (non "namespacing") per cui google
non produce risultato.

Come rimedio per il compito che devo effettuare, utilizzo underscore
come separatori. Questo mi obbliga ad usare CamelCase per namespace e
nomi tabella (es. NameSpace\_TableName). Non una soluzione perfetta, ma
almeno si documenta da sola.

.. raw:: html

   </div>

