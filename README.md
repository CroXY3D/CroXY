# CroXY
Croxy is a Crossed Gantry 3D Printer.  Pronounced "Crock-see".  

CroXY is a fully enclosed 3D Quadrap printer with a crossed linear rail gantry design, direct drive extruder and a kinematically mounted bed that moves in Z with three ball screws.

  
 ![Small Image of CroXY](https://github.com/wesc23/CroXY/blob/master/Images/Overall_View_Small.png?raw=true)
  
It is simple to build, align and provision.  It uses a minimum of printed parts, many of which will be easily machinable out of aluminum. Print quality is superb.

It is a ground up design, based on concepts from the [Annex Engineering K2](https://github.com/Annex-Engineering/Chhogori-K2) and the [Hypercube Overkill Project](https://reprap.org/forum/read.php?177,807843,807843).  

This is an ALPHA release.  The printer has been assembled and is printing with excellent print quality.  Plan is to move it to under the Annex Engineering umbrella upon BETA.

# Major features of CroXY
  - 3030 and 3060 frame members for stiffness and ease of assembly
  - Crossed rail gantry design with 4 motors driving 9mm XY belts
  - Triple SFU1204 ball screw driven Z for automatic bed levelling
  - Linear Rails are all MGN12H
  - Fully Enclosed, with option for 20mm of insulation.  Printer functions fully without panels for materials that do not require insulation.   
  - Bed is 6mm Mic6 and is kinematically mounted with Kelvin kinematic joints preloaded by magnets.  Thicker beds are possible.
  - Hemera Direct Drive E3D extruder toolhead
  - Magnetically coupled switch based probe picked up from a dock for super accurate bed probing.
  - Dedicated area for nozzle purge and wipe. 
  - Z Towers are built on a single 3060 extrusion making ball screw and rail alignment extremely simple.
  - Duet2 or Duet3 electronics with Reprap firmware 2 or 3.  Klipper support is planned
  - Built in optional drawer for tools and or a spool that feeds the extruder.  
  - Feet with sorbothane vibration isolation.
  - Footprint comparable to other printers of same bed size.
  - Design is for 250x250x250 nominal size.  Up to 350x350x500 should be easy.  
  - MGN15 Gantry and 12mm belt mods in development will enable build sizes up to 500x500x500.
  - Minimal printed parts.  Most are designed to be easily machinable by aluminum for even more stiffness.  Aluminum Z lifters are already designed.  Aluminum toolhead, XY motor base plates and XY carriages are also in development.

# CroXY offers a number of advantages over CoreXY designs
  - Belts are shorter and have simple paths, alignment is easier and less ringing
  - Less friction in motion system makes for more accurate positioning making for exceptional layer stacking.
  - 4 motors moving the XY gantry make for more torque for more accurate positioning (1.4x-4x more torque)
  - Motion is simple X motors move X, Y motors move Y, so troubleshooting is easier
  
# Disadvantages of CroXY
  - Requires 3 more rails and 2 more steppers/drivers.
  - Visibility of the build area is lessened.  Though the printhead has been designed with nozzle visibility in mind.
  - Cost.  It's not a cheap build, but it is still within the price range of similar cube design printers.
  
# Work to be done 
  - Finish lid and enclosure, including front hinges
  - External insulated enclosure
  - Exhaust Fan and control
  - Some trim pieces
  - Wiring diagram
  
  
# BOM  
A CroXY build will cost approx $1500 with budget rails.  A first class build with Misumi rails will run around $2500.  An incomplete BOM can be found here [BOM](https://docs.google.com/spreadsheets/d/1nd5IvDQm3_plhFC6qLKJPE1nMU45jPsB3Xuin5mlSXQ/edit?usp=sharing)
Panels have not been specced or priced yet. That is the biggest missing piece from the BOM.

![Build Cost](https://github.com/wesc23/CroXY/blob/master/Images/Build_Cost.png?raw=true)

# NOTES
Fusion360 archives probably lag the state of the STLs.  Export of them is somwewhat painful, so I don't always do it.

# MEDIA

  [Video of CroXY](https://youtu.be/Kx4VfzS_V6c)

  ![Image of CroXY](https://github.com/wesc23/CroXY/blob/master/Images/Overall_View.png?raw=true)
  
  ![Image of Printhead](https://github.com/wesc23/CroXY/blob/master/Images/Printhead.png?raw=true)
  
  ![IRL](https://github.com/wesc23/CroXY/blob/master/Images/IRL.jpg?raw=true)
