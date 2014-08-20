Bluehost, wordpress e il From nell'indirizzo di registrazione
#############################################################
:date: 2007-08-30 09:09
:author: Stefano
:category: Amministrative, Informatica
:slug: bluehost-wordpress-e-il-from-nellindirizzo-di-registrazione

Durante l'installazione e configurazione di Wordpress, mi sono reso
conto che le email di registrazione erano inviate con uno strano
login(at)box.bluehost.com, invece di qualcosa di più user friendly, tipo
wordpress(at)the\_site. Dopo un po' di ricerca nei sorgenti di Wordpress
ho trovato che Wordpress usa la funzione php mail(), e che l'indirizzo
From viene correttamente impostato a wordpress(at)the\_site, di
conseguenza le impostazioni di Wordpress non erano la fonte del
problema. Dopo un po' di esperimenti ho scoperto la soluzione.

In pratica, quando si imposta Wordpress su bluehost, l'indirizzo From
nella mail che gli utenti ricevono quando si registrano è la mail
generica fornita da bluehost quando si effettua il login, **tranne se**
si crea un indirizzo wordpress@your\_site dal cPanel. Dopo che questa
operazione viene effettuata, la mail di registrazione sarà inviata con
l'indirizzo wordpress@your\_site senza ulteriori manipolazioni.
