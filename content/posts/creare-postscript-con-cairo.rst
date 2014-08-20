Creare PostScript con Cairo
###########################
:date: 2007-11-09 19:29
:author: Stefano
:category: C/C++ @it, Grafica, PostScript @it
:slug: creare-postscript-con-cairo

Sto cercando di creare grafica vettoriale con il canale alfa di
trasparenza. Purtroppo, sembra che PostScript, anche Level 3, non
supporti la trasparenza. Come conseguenza, per disegnare due oggetti
sovrapposti (per esempio, cerchi) in PostScript con la necessità di
trasparenza, è necessario qualche trucco:

-  disegnare il primo cerchio, poi il secondo (che si sovrappone e
   sovrascrive il secondo parzialmente) con colori opportuni, tenendo
   conto del colore di fondo
-  calcolare l'intersezione delle due aree (analiticamente: vector
   graphics)
-  calcolare il colore ottenuto dalla mescolanza dei due cerchi
   nell'area di sovrapposizione, tenendo conto del loro colore, del loro
   livello di trasparenza, e del colore dello sfondo
-  disegnare la parte di intersezione con il colore ottenuto al passo
   precedente

Questo ovviamente diventa sempre più complesso man mano che nuove figure
si sovrappongono sull'asse z (come una linea, un cerchio, due rettangoli
e una spline). Per ciascuno di essi, bisogna considerare come sono
sovrapposti, in che ordine, ricavare l'area di sovrapposizione,
calcolare il colore opportuno considerando tutti i partecipanti,
disegnare le parti nell'ordine corretto. In poche parole, il caos.

Per questa ragione, ho pensato di non reinventare la ruota e di usare
`Cairo <http://cairographics.org/>`_, assumendo che il problema fosse
stato risolto e fosse disponibile come comoda libreria. Dopo un po' di
esperimenti, mi sono invece reso conto che anche Cairo si arrende
durante il rendering di PostScript con trasparenza. Per esempio, questo
codice produce cerchi senza trasparenza (alpha = 1.0), il che crea un
file PostScript totalmente vettoriale

::

    int main (int argc, char *argv[]) {
            cairo_surface_t *surface;
            cairo_t *cr;
            char *filename = "image.ps";

            surface = (cairo_surface_t *)cairo_ps_surface_create (filename, 80.0, 80.0);
            cr = cairo_create (surface);

            cairo_set_source_rgba (cr, 1.0, 0.0, 0.0, 1.0);
            cairo_set_line_width (cr, 1.0);
            cairo_set_fill_rule (cr, CAIRO_FILL_RULE_WINDING);

            cairo_arc(cr, 20.0, 20.0, 10.0, 0.0, 2*M_PI);
            cairo_fill(cr);
            cairo_stroke (cr);

            cairo_set_source_rgba (cr, 0.0, 0.0, 1.0, 1.0);
            cairo_arc(cr, 30.0, 20.0, 10.0, 0.0, 2*M_PI);
            cairo_fill(cr);
            cairo_stroke (cr);

            cairo_set_source_rgba (cr, 0.0, 1.0, 0.0, 1.0);
            cairo_arc(cr, 25.0, 28.6, 10.0, 0.0, 2*M_PI);
            cairo_fill(cr);
            cairo_stroke (cr);

            cairo_destroy (cr);
            cairo_surface_destroy (surface);

            return 0;
    }

Tuttavia, rimpiazzando

``cairo_set_source_rgba (cr, 1.0, 0.0, 0.0, 1.0);``

con

``cairo_set_source_rgba (cr, 1.0, 0.0, 0.0, 0.5);``

e di conseguenza abilitando la necessità di canale alfa per la
trasparenza, il PostScript finale contiene una immagine raster, non una
vettoriale. Renderizzando con il backend PDF, l'immagine invece contiene
grafica vettoriale con trasparenza. Non conosco il formato PDF nel
dettaglio, ma sembra che questo indichi supporto nativo per l'alfa
blending.

Questa immagine mostra i tre casi: da sinistra a destra PostScript
backend senza alpha blending, PostScript backend con alpha blending, e
PDF backend con alpha blending.

`|Rendering with different alpha blending levels and backend
renderers| <http://forthescience.org/blog/wp-content/uploads/2007/11/cairo_rendering.png>`_

L'output PDF si ottiene cambiando

``surface = (cairo_surface_t *)cairo_ps_surface_create (filename, 80.0, 80.0);``

con

``surface = (cairo_surface_t *)cairo_pdf_surface_create (filename, 80.0, 80.0);``

e naturalmente cambiando il nome file in modo appropriato. Nota a parte,
ho dovuto convertire entrambe le immagini PostScript images a PDF con
ps2pdf prima di visualizzarle: a causa di problemi sul mio Mac non
riesco ad aprire file PostScript direttamente (che sono convertiti a PDF
da Anteprima.app in ogni caso). Ciò tuttavia non cambia la conclusione,
che è anche confermata aprendo il file PostScript con un editor di
testo.

La bassa qualità dell'immagine raster nel PostScript con alpha blending
è evidente. Apparentemente Cairo crea quello che sembra una immagine
JPEG, e quindi la include nel PostScript via DataSource (vedi
`PostScript reference
manual <http://partners.adobe.com/public/developer/en/ps/psrefman.pdf>`_,
Sezione 4.10).

Concludendo, da quello che ho potuto sperimentare Cairo non è in grado
di produrre una immagine PostScript puramente vettoriale con alfa
blending. Deve passare a una rappresentazione raster, perdendo tutti i
vantaggi di una rappresentazione vettoriale.

Nonostante ciò, penso che Cairo sia una libreria molto potente e ben
fatta per creare grafica vettoriale via codice. Un applauso agli
sviluppatori!

.. |Rendering with different alpha blending levels and backend renderers| image:: http://forthescience.org/blog/wp-content/uploads/2007/11/cairo_rendering.png
