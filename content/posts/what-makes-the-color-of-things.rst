What makes the color of things ?
################################
:date: 2011-06-15 21:00
:author: Stefano
:category: Computational Chemistry, Natural compounds chemistry
:slug: what-makes-the-color-of-things

Suppose someone gives you the chemical formula of a substance, such as

`|image0| <http://en.wikipedia.org/wiki/File:Indigo.svg>`_ and asks you
the color this substance is expected to have. Is it possible to give an
answer? In most cases, you may have an educated guess, but an accurate
prediction is far from trivial: the color of a substance is decided at
various levels, from the basic molecular level up to the macroscopic
structure.

The first level: the molecule by itself
---------------------------------------

The most "trivial" level is the molecule by itself, and it is decided by
the elements it is made of, its geometric structure (the position of the
atoms), and their charges. These parameters have a key impact on how its
electrons are distributed in space and how this distribution changes
when light enters the scene, a phenomenon which is strongly related to
light adsorption and thus to color.

When it comes to perception of visible light, white light is a mixture
of all the wavelengths of electromagnetic radiation from ~700 nanometers
to ~400 nanometers. These wavelengths are perceived by our eyes (and
brains) as colors, with the longer value of 700 nanometers being almost
infrared and the shorter 400 nanometers being almost ultraviolet.

`|EM spectrum| <http://en.wikipedia.org/wiki/File:EM_spectrum.svg>`_

In a more simplified rewording, white light is a mixture of all the
colors of the rainbow, spanning from red to violet passing through
yellow, green, blue etc. as beautifully shown by this prism

`|image2| <http://en.wikipedia.org/wiki/File:Dispersive_Prism_Illustration_by_Spigget.jpg>`_

When you send some white light on the molecule you basically provide all
the colors. The electronic setup of the molecule is such that it
"prefers" specific light wavelengths (hence, specific light colors), and
this preference results in an adsorption. This is due to the light
promoting an "electronic transition" between a ground state and an
excited state: electronic distribution is rearranged due to the
interaction between electrons and the electromagnetic radiation. A
simplified vision of this event is the electron "jumping" to a higher,
excited level, but in reality, it is the electronic cloud that changes.

[caption id="" align="aligncenter" width="200" caption="Transition to a
ground (E1) to an excited state (E2) due to adsorption of an incoming
photon of light
(hv)"]`|image3| <http://en.wikipedia.org/wiki/File:AtomicLineAb.png>`_[/caption]

The accumulated energy is then "quenched" (dispersed) as heat. As a
consequence, the molecule removes some colors from the white light,
leaving others unscathed, and the resulting color we see is the
complementary one. If the molecule absorb blue, you get red. If it
absorb yellow, you get violet. Absorption in general is not an
"all-or-nothing". The intensity of absorption at each wavelength depends
on many factors, producing what is called an absorption spectrum, which
is unique and characteristic of every molecule or atom. The color of the
substance is the complementary result of this spectrum. The uniqueness
of the spectrum allows us to infer the composition of our Sun, of
`distant
stars <http://en.wikipedia.org/wiki/Astronomical_spectroscopy>`_ and
`planets <http://en.wikipedia.org/wiki/Occultation#Occultation_by_planets>`_,
through what were commonly known as `Fraunhofer
lines <http://en.wikipedia.org/wiki/Fraunhofer_lines>`_

[caption id="" align="aligncenter" width="500" caption="Fraunhofer lines
are absorption lines of atoms in the Sun atmosphere. Some absorption is
also performed by Earth atmosphere. They act as fingerprints for a given
atomic
species."]`|image4| <http://en.wikipedia.org/wiki/File:Fraunhofer_lines.svg>`_[/caption]

Electronic transitions, however, are not the only responsible for
absorbing light. A molecule can also absorb light by excitation of
rotations and vibrations (meaning that the molecule spins faster, or
vibrates more). One case is water. Water appears as transparent, but `in
reality it's slightly
blue <http://en.wikipedia.org/wiki/Color_of_water>`_. The reason is that
some wavelengths in the red make it vibrate more (to be exact, water
absorbs in the infrared, which would not make a difference to our eyes,
but this absorption has a so-called "overtone" which is in the visible
red). As a result, a minimal amount of red is subtracted from white
light and water ends up being slightly blue.

Can we predict this information? Yes, we totally can, with relatively
good, but not perfect accuracy. There are `many different
programs <http://en.wikipedia.org/wiki/List_of_quantum_chemistry_and_solid_state_physics_software>`_
capable of obtaining this information: the wavelengths where absorptions
occur, vibrations, and other parameters that are important to decide the
final spectrum. For atoms and small molecules, accuracy is very good,
but as the molecule size increases, predictions require larger and
larger computing power. For this reasons, quantum chemistry method
developers daily create new smart approximations, able to deliver a very
accurate result for a reduced computational cost. In any case, the
required input is just the geometric position (xyz coordinates) of the
atoms, their atomic numbers and masses, and the net charge.

The second level: molecular interactions and reactions
------------------------------------------------------

Molecules are generally not alone. They can come close, and eventually
have other molecules around, either of the same species, or of other
species, such as those of a solvent: from simple water, alcohol or
acetone, to complex cell environment. There are no reactions involved,
just the proximity of other molecules, with their protons and electrons.
These partners alters the electronic setup of the molecule, promoting a
slight variation of the electronic and vibrational behavior. Absorption,
and thus the color, is consequently changed. In general, this change is
a shift of the original spectrum either towards higher wavelengths
(`bathochromic
shift <http://en.wikipedia.org/wiki/Bathochromic_shift>`_) or shorter
ones (`hypsochromic
shift <http://en.wikipedia.org/wiki/Hypsochromic_shift>`_).

Then you have anything that can change the structure of the molecule
through chemical reaction. Take tea, put some lemon into it, and its
color becomes lighter. The reason is that with lemon you are increasing
the acidity of the water, which means a higher concentration of charged
hydrogen ions (H+). The higher concentration of hydrogen ions push
`Thearubigins <http://en.wikipedia.org/wiki/Thearubigin>`_, a class of
colored substances found in fermented tea, into a form with the ion
attached, which creates a change in the molecular electronic
distribution, which in turns changes the absorption and thus the color.
For some substances, this effect can be dramatic: from blue to red, from
transparent to purple, from yellow to blue. These are the so-called pH
indicators

[caption id="" align="aligncenter" width="250" caption="Bromothymol blue
at acid, neutral and alcaline solution (left to
right)."]`|image5| <http://en.wikipedia.org/wiki/File:Bromothymol_blue_colors.jpg>`_[/caption]

These effects may technically be predictable, but they require to
consider a complex system of interacting species, with different
chemical exchanges, short and long range interactions of charges and so
on. This may be very difficult, if not impossible to perform with
today's methods and computational power, although approximations exist
to work around the heavy computational weight and provide reasonable
results.

The third level: crystal and impurities
---------------------------------------

A crystal is a solid where the constituent molecules or ions are
disposed in space with a well defined order. For any given substance,
the ordering of its atoms or molecules in space is not necessarily
unique, a phenomenon known as
`polymorphism <http://en.wikipedia.org/wiki/Polymorphism_%28materials_science%29>`_.
Depending on the packing, different properties arise, and different
colors are the result. Diamond is transparent, graphite is black, and
black is also C60 fullerene, but they are all made of the same element:
carbon.`|Diamond and
graphite| <http://en.wikipedia.org/wiki/File:Diamond_and_graphite2.jpg>`_

For another example, take gold. You may say that it has gold color, but
if you take `a small cluster (say, 100 atoms) of gold, what you see is
red, not gold-colored <http://www.youtube.com/watch?v=5EEh9JKzPxM>`_.

When you have atoms or molecules ordered in a crystalline structure, the
result can absorb light by virtue of this ordered structure. Note that
this effect is complementary to the initial absorption characteristics
of the molecule or atom taken by itself. For example, one single atom of
carbon may absorb close to nothing in the visible, but due to the highly
ordered crystalline structure, the macroscopic block of graphite you
hold in your hands absorbs light, most of it, and thus is black. `A
similar effect occurs with any pigment having crystalline structures
influencing the
color <http://onlinelibrary.wiley.com/doi/10.1111/j.1478-4408.1999.tb00129.x/abstract>`_.
At the quantum level, the effect just presented is related to `band
structure <http://en.wikipedia.org/wiki/Electronic_band_structure>`_ and
`Bloch wavefunctions <http://en.wikipedia.org/wiki/Bloch_wave>`_. The
same facts also explains semiconductors and conductivity of metals.

These effects are relatively predictable. A large number of
computational software deals with periodic structures in a very
efficient way, providing spectroscopic information about the properties
of both atomic and molecular crystals.

As an additional twist, `crystals can have
defects <http://en.wikipedia.org/wiki/Crystallographic_defect>`_, such
as imperfect packing or impurities of foreign elements into the periodic
structure. The resulting effect is beautifully shown in
`diamonds <http://en.wikipedia.org/wiki/Diamond_color>`_, for example in
the `Aurora Pyramid of
Hope <http://en.wikipedia.org/wiki/Aurora_Pyramid_of_Hope>`_

`|image7| <http://en.wikipedia.org/wiki/File:Aurora_Diamond_Collection.jpg>`_

and in `Aluminium
oxide <http://en.wikipedia.org/wiki/Aluminium_oxide>`_: pure, it is
colorless. Add some chromium, iron vanadium and titanium and it may
become ruby

`|image8| <http://en.wikipedia.org/wiki/File:Ruby_gem.JPG>`_

or sapphire, which is blue, pink, yellow, orange, purple or green,
depending on the crystal structure, and the relative quantities of these
impurities.

`|image9| <http://en.wikipedia.org/wiki/File:Logansapphire.jpg>`_

These effects are generally very hard to compute, as they may require
statistically large ensembles of atoms. I am not aware of any
computational techniques on this regard.

The fourth level: macroscopic properties
----------------------------------------

Finally you have how the substance is structured at the macroscopic
level. Take a smooth platinum electrode: it is platinum color. Make it
sponge-like (by making very tiny bubbles and pits) to increase the
surface area `and it appears black as
coal <http://en.wikipedia.org/wiki/Platinum_black>`_. The reason is that
light is scattered and absorbed completely, leading to a black color.

This opens to many additional effects concerning matter-light
interaction. What is the color of a CD ? Is it silver ? Is it "rainbow"
? What about the color of a oil slick on the road in a rainy day ? What
about the color of a `Tiger's
eye <http://en.wikipedia.org/wiki/Tiger%27s_eye>`_, or of an opal

`|image10| <http://en.wikipedia.org/wiki/File:Opal_Armband_800pix.jpg>`_

And what about blue eyes, and the blue color of a spoon of flour
dispersed in water ? Both are due to `Tyndall
scattering <http://en.wikipedia.org/wiki/Tyndall_effect>`_. There is no
blue pigment in blue eyes, nor in flour, but the scattering of light is
frequency dependent, reflecting blue and transmitting red, leading to a
blue color.

`|Chris73| <http://en.wikipedia.org/wiki/File:WaterAndFlourSuspensionLiquid.jpg>`_

As you see, color is a very particular property, and while you may have
an educated guess from quantum mechanics techniques, it's not always
easy to infer the color of a substance. This is just the tip of the
iceberg. You have many other phenomena (such as how much light
penetrates into the substance, or which macroscopic imperfections are
present) which affects both the color and the reflective properties of a
substance. Ice is transparent, but if it's full of bubbles it is white.
Plastic looks like plastic, and metal looks like metal, depending on how
light is scattered and absorbed, which then changes the way it is
reflected back to the viewer. In addition, this does not only affects
color, but also the general material texture.

What about the opening molecule ?
---------------------------------

The opening molecule is
`Indigo <http://en.wikipedia.org/wiki/Indigo_dye>`_, a natural dye found
in some plants. Today, it is synthetically produced in large quantities.
It is commonly used to dye `blue
jeans <http://en.wikipedia.org/wiki/Jeans>`_.

.. |image0| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Indigo.svg/250px-Indigo.svg.png
.. |EM spectrum| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/EM_spectrum.svg/500px-EM_spectrum.svg.png
.. |image2| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Dispersive_Prism_Illustration_by_Spigget.jpg/300px-Dispersive_Prism_Illustration_by_Spigget.jpg
.. |image3| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/AtomicLineAb.png/200px-AtomicLineAb.png
.. |image4| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Fraunhofer_lines.svg/500px-Fraunhofer_lines.svg.png
.. |image5| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Bromothymol_blue_colors.jpg/250px-Bromothymol_blue_colors.jpg
.. |Diamond and graphite| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Diamond_and_graphite2.jpg/250px-Diamond_and_graphite2.jpg
.. |image7| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Aurora_Diamond_Collection.jpg/400px-Aurora_Diamond_Collection.jpg
.. |image8| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Ruby_gem.JPG/250px-Ruby_gem.JPG
.. |image9| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Logansapphire.jpg/200px-Logansapphire.jpg
.. |image10| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Opal_Armband_800pix.jpg/200px-Opal_Armband_800pix.jpg
.. |Chris73| image:: http://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/WaterAndFlourSuspensionLiquid.jpg/150px-WaterAndFlourSuspensionLiquid.jpg
