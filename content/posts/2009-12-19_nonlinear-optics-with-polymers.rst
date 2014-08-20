Nonlinear optics with polymers
##############################
:date: 2009-12-19 10:44
:author: Stefano
:category: Computational Chemistry
:slug: nonlinear-optics-with-polymers
:attachments: blog/wp-content/uploads/2009/12/molecule.png

Of the many things I posted, I never had the chance to write something
about my direct scientific activity. Recently I worked on optical
properties of polyenes. A `paper <http://dx.doi.org/10.1063/1.3216825>`_
has been published recently on Journal of Chemical Physics. Another one
is submitted right now, and a third is in preparation.

Molecules interact with light. This should come to no surprise, as (for
example) the whole world of colors depends on this effect. The most
trivial interaction between the light and a molecule is normally
absorption of one photon followed by emission of the same photon.
Nothing changes in terms of energy of the photon. A given wavelength
enters, the same wavelength leaves. The molecule is unchanged and
unaffected by the event, except for a brief excitation of the electrons
cloud. This event is typical linear optics behavior.

However, if we increase the photon density enough, two photons can be
absorbed at the same time by the same molecule. After this event takes
place, the molecule has many choices to return to electronic ground
state. One is to re-emit two photons again. Nothing changes, still a
linear optics effect.

.. raw:: html

   <div class="mceTemp" style="text-align: justify;">

`|flip619| <http://en.wikipedia.org/wiki/File:Green-lased_palm_tree_%28crop%29.jpg>`_ A green laser pointer (from Wikipedia, user flip619)

.. raw:: html

   </div>

However, the molecule could also release a single photon, whose
frequency is derived by the total amount of energy provided by the two
original photons. In other words, a photon of frequency twice the
original will be emitted. This is called `Second Harmonic
Generation <http://en.wikipedia.org/wiki/Second_harmonic_generation>`_
and if you have seen a green laser pointer, you directly experienced
this effect: the green laser diode is in reality a very strong infrared
laser diode covered with a crystal of `potassium titanyl
phosphate <http://en.wikipedia.org/wiki/Potassium_titanyl_phosphate>`_.
The infrared photons are absorbed and doubled by the crystal into the
green wavelength we see. Exactly the same phenomenon is used with blue
lasers used for Blu-ray technology.

Frequency doubling is just one of the non-linear optics effects. There
are many more, and they are promising to develop `optoelectronic
devices <http://en.wikipedia.org/wiki/Optoelectronics>`_, where we
control light with an electric field. Unfortunately, in most cases the
intensity of non-linear effects is very, very small. You need a very
strong laser emission to reach a sufficient photon density for the
phenomenon to be appreciable (or used for pratical, non purely
instrumental purposes). Moreover, we are using inorganic crystals at the
moment, but crystals are fragile, tend to degrade as they are under
thermal and optical stress, and they cost a lot. As a consequence,
research focused on organic compounds, carbon-based molecules able to
produce sizable non-linear optics effects at a fraction of the price,
better mechanical properties, and less degradation. Having a polymer
able to produce strong non-linear effects would dramatically reduce the
cost and increase the life of these devices.

Exploring the chemical space of organic compounds in the "wet lab" is
demanding, polluting, and in some cases unachievable, so we simulate the
lab on a computer, running a computational method that predicts the
intensity of the non-linear effects of a molecular structure of our
choice. Our task is therefore to produce a lot of molecules, feed them
into this computational machinery, get the evaluation of the non-linear
behavior, and try to spot some rules to guide us in maximizing the
characteristics we are interested in. As it frequently happens, there's
no "perfect compound". Instead, there's a good trade-off, but we are
interested in devising rules, not finding the perfect molecule with a
brute force approach (which is unachievable, there are simply too many
compounds possible out of carbon, hydrogen, nitrogen, oxygen and
sulphur: infinite).

My work was focused on polyenes. It's a nice class of compounds with a
nice single-double bond alternation. This allows "almost free" flow of
electrons through this kind of molecular wire.

.. raw:: html

   <div class="mceTemp" style="text-align: justify;">

|Polyene chain|
    Polyene chain

.. raw:: html

   </div>

We know that non-linear optics properties are influenced by

-  The length of the polyene chain. Longer chains give higher values,
   with a behavior which can be approximated as a power law for short
   chains.
-  The substituents groups we put at the ends of the chain (marked as
   black dots in the picture). Different groups produce different
   molecules, and therefore, different non-linear properties.

We explored what happened to the non-linear properties as we increase
the length of the chain, and at the same time, we include different
combinations of end-caps substituents groups. We chose four critically
important substituents: two electron donors, one strong (NH2), one weak
(OH), and two electron acceptors, one strong (NO2) and one weak (CN). In
addition, we used the neutral substituent H. Results were very
interesting, and in some cases unexpected. Among many other things, we
found that the presence of two substituents can be approximated, in some
cases, as a simple addition of two single substitutions, meaning that
for certain lengths of the chain, the interaction of the two groups
vanishes and they behave as they are isolated.

We also found that the presence of these groups distorts the molecule
from its linear, rod-like shape to a C-shaped or S-shaped chain,
depending on their nature. This is rather remarkable finding, as there
was no computational report for this and very scarce experimental report
only on a similar class of compounds. The shape of the molecule has both
an effect on the non-linear properties, and on how the polymer
crystallizes (depending how good is the packing of the various chains).
A new paper on the Journal of Physical Chemistry A has just been
accepted on these findings, and it will be published as soon as the
editorial process is performed.

So I have something to celebrate tonight. I think I'll go out for a nice
sushi!

.. |flip619| image:: http://upload.wikimedia.org/wikipedia/commons/3/31/Green-lased_palm_tree_%28crop%29.jpg
.. |Polyene chain| image:: http://forthescience.org/blog/wp-content/uploads/2009/12/molecule.png
