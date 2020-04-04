# CruXY
Cruxy is a Crossed Gantry 3D Printer.  Crux means cross.  It's also the most difficult part of a mountain climbing route.  Pronounced "Crew XY".

CruXY is a fully enclosed 3D Quadrap printer with a crossed linear rail gantry design, direct drive extruder and a kinematically mounted bed that moves in Z with three ball screws.

It is a ground up design, based on concepts from the [Annex Engineering K2](https://github.com/Annex-Engineering/Chhogori-K2) and the [Hypercube Overkill Project](https://reprap.org/forum/read.php?177,807843,807843).  

It is simple to build, align and provision.  It uses a minimum of printed parts, many of which will be easily machinable out of aluminum.  Print quality is superb.

This is an ALPHA release.  The printer has been assembled and is printing.  Plan is to move it to under the Annex Engineering umbrella upon BETA.

# Major features of CruXY
  - 3030 and 3060 frame members for stiffness and ease of assembly
  - Crossed rail gantry design with 4 motors driving 9mm XY belts
  - Triple SFU1204 ball screw driven Z for automatic bed levelling
  - Z Towers are built on a single 3060 extrusion making ball screw and rail alignment extremely simple
  - Linear Rails are all MGN12
  - Bed 6mm Mic6 and is kinematically mounted with Maxwell joints preloaded by magnets.  Thicker beds are possible.
  - Hemera Direct Drive E3D Extruder (it is compatabile with Annex Engineering K1/K2 printheads)
  - Magnetically coupled switch based probe picked up from a dock for super accurate bed probing
  - Dedicated area for nozzle purge and wipe 
  - Duet2 or Duet3 electronics with Reprap firmware 2 or 3.  Klipper support is planned
  - Built in drawer for tools and or a spool that feeds the extruder
  - Feet with sorbothane vibration isolation.
  - Footprint comparable to other printers of same bed size.
  - Design is for 250x250x250 nominal size.  Up to 350x350x500 should be possible.  Further with planned MGN15 gantry mod.
  - Minimal printed parts.  Most are designed to be easily machinable by aluminum for even more stiffness.

# CruXY offers a number of advantages over CoreXY designs
  - Belts are shorter and have simple paths, alignment is easier and less ringing
  - Less friction in motion system makes for more accurate positioning
  - 4 motors moving the XY gantry make for more torque for more accurate positioning (1.4x-4x more torque)
  - Motion is simple X motors move X, Y motors move Y, so troubleshooting is easier
  
# Work to be done 
  - Finish lid and enclosure, including front hinges
  - Drawer slide mechanism
  - External insulated enclosure
  - Exhaust Fan and control
  - Some trim pieces
  - Wiring diagram
  - Publish RRF config files.
  
  
# BOM  
A CruXY build will cost approx $1500 with budget rails.  A first class build with Misumi stainless steel rails will run around $2500.  An incomplete BOM can be found here [BOM](https://docs.google.com/spreadsheets/d/1nd5IvDQm3_plhFC6qLKJPE1nMU45jPsB3Xuin5mlSXQ/edit?usp=sharing)

# NOTES
Fusion360 archives probably lag the state of the STLs.  Export of them is somwewhat painful, so I don't always do it.

# PICS
Video coming soon.


  
  ![Image of CruXY](https://raw.githubusercontent.com/wesc23/CruXY/master/Images/Overall_View.png?raw=true)
  
  ![Image of Printhead](https://github.com/wesc23/CruXY/blob/master/Images/Printhead.png?raw=true)
  
  ![IRL](https://github.com/wesc23/CruXY/blob/master/Images/IRL.jpg?raw=true)
