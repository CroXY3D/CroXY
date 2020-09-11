# CroXY
CroXY is a Crossed Gantry 3D Printer.  Pronounced "Crock-see".  

Designed and built by Wes Cherry (Ocho Camino, wesc@technosis.com)

CroXY is a fully enclosed 3D Quadrap printer with a crossed linear rail gantry design, direct drive extruder and a kinematically mounted bed that moves in Z with three ball screws.

  
 ![Small Image of CroXY](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_Small.png?raw=true)
  
It is simple to build, align and provision.  It uses a minimum of printed parts, many of which will be easily machinable out of aluminum. Print quality is superb.

It is a ground up design, loosely based on concepts from the [Annex Engineering K2](https://github.com/Annex-Engineering/Chhogori-K2) and the [Hypercube Overkill Project](https://reprap.org/forum/read.php?177,807843,807843).  

This is an BETA release.  The printer has been assembled and is printing with excellent print quality for three weeks now. No significant changes have been made to the printer in that time.

# Major features of CroXY
  - 3060 frame members for stiffness and ease of assembly.
  - Crossed rail gantry design with 4 motors driving 9mm or 12mm XY belts.
  - Triple SFU1204 ball screw driven Z for automatic bed levelling.
  - TR8x4 Leadscrews for Z supported in budget build.
  - Linear Rails are all MGN12H.  One of the rails can be backed by a 2020 extrusion for more rigidity.  Backing the other rail is possible.
  - Fully Enclosed, with option for 20mm of insulation.  Printer functions fully without panels for materials that do not require insulation.   
  - Bed is 6mm Mic6 and is kinematically mounted with Maxwell kinematic joints preloaded by magnets.  Thicker beds are possible.
  - Hemera Direct Drive E3D extruder toolhead
  - Magnetically coupled switch based probe picked up from a dock for super accurate bed probing.  Repeatibility of 0.005mm.
  - Simple, easily accessible belt tensioning.
  - Dedicated area for nozzle purge and wipe. 
  - Z Towers are built on a single 3060 extrusion making ball screw and rail alignment extremely simple.  They easily remove from the printer for bench work.
  - Sven is a super cool dude.
  - Duet2 or Duet3 electronics with Reprap firmware 3.  Klipper support is planned
  - Electronics are in the bottom of the machine, for easy access from above.  No flipping or rotating the machine to access the electronics.
  - Nearly all wires are ran thru the center channel of 3060 extrusions for a clean looking machine.
  - Built in optional drawer for tools and or a spool that feeds the extruder.  
  - Hour meter.
  - LED status rings, similar to BLV MGN Cube.
  - Feet with sorbothane vibration isolation.
  - Footprint comparable to other printers of same bed size (Footprint is only 5% larger than that of a comparable print volume Railcore)
  - Design is for 270x270x300 nominal size.  Up to 370x370x500 should be easy.  
  - MGN15 Gantry mod in development will enable build sizes up to 500x500x500.
  - Minimal printed parts.  Most are designed to be easily machinable using 0.5" or 12mm thick aluminum for even more stiffness and use in high temp 3D printing.  Aluminum Z lifters are already designed and in use.  XY motor base plates are being fabricated and CAD work is done for the Hemera toolhead holder, Maxwell joints, and XY carriages.  All plastic parts aside from the fan manifold will eventually be made out of aluminum.

# CroXY offers a number of advantages over CoreXY designs
  - Belts are shorter and have simple paths, alignment is easier and less ringing
  - Less friction in motion system makes for more accurate positioning making for exceptional layer stacking.
  - 4 motors moving the XY gantry make for more torque for more accurate positioning (1.4x-4x more torque)
  - Motion is simple X motors move X, Y motors move Y, so troubleshooting is easier
  
# Disadvantages of CroXY
  - Requires 3 more rails and 2 more steppers/drivers than a CoreXY.
  - Visibility of the build area is lessened.  Though the printhead has been designed with nozzle visibility in mind.
  - Toolchanging is more difficult, but it is possible.
  - Hemera toolhead is relatively heavy at 500g.  The benefits of direct drive extrusion vs bowden make it worth it.  CroXY's crossed rail design allows it to carry a heavier toolhead than other single rail gantry printers.  A lightweight printhead based on the Derpa extruder is planned.
  - Cost.  It's not a cheap build, but it is still within the price range of similar cube design printers.
  
# Work to be done 
  - Finish lid and enclosure, including front hinges
  - Aluminum parts (many are done!)
  - External insulated enclosure
  - Exhaust Fan and control
  - Some trim pieces
  - Wiring diagram
  - Chamber heater
  
# Caveats
CroXY is an advanced build.  You should only attempt to build it if you have successfully built another kit printer.  Building that will give you a lot of experience so you don't make mistakes with CroXY.  

Croxy is a ever growing experimental project. Although the existing machines work and work well, there is no guarantee that yours will. These are homemade machines built by different people, with differing parts. We help where we can, but in the end this is a hobby and we are hobbiests.

A lot of people ask about doing a large format version, with a bed larger than 350x350.  This is uncharted territory and may result in a printer that only performs well printing slowly with low acceleration.  Doing massive prints will take forever.  That said, I have ordered the parts to build a 300x500 CroXY and will be attempting to make something that works well.
  
# DISCORD
We now have a [Discord](https://discord.gg/ryj6wyx) to discuss CroXY!  
  
  
# BOM  
A CroXY build will cost approx $1500 with budget rails.  A first class build with Misumi rails will run around $2500.  An incomplete BOM can be found here [BOM](https://docs.google.com/spreadsheets/d/1nd5IvDQm3_plhFC6qLKJPE1nMU45jPsB3Xuin5mlSXQ/edit?usp=sharing)
Panels have not been specced or priced yet. That is the biggest missing piece from the BOM.

![Build Cost](https://github.com/wesc23/CroXY/blob/master/Images/Build_Cost.png?raw=true)

# FUSION 360
[The current Fusion 360 CAD Files](https://a360.co/3gxpcK5).  CroXY is still in development and not everything is 100% complete.

# MEDIA

[Video of CroXY](https://youtu.be/Kx4VfzS_V6c)

[Video of CroXY bed probiing and automatic bed levelling](https://www.youtube.com/watch?v=WyJbbjh8Hpk)

![IRL](https://github.com/wesc23/CroXY/blob/master/Images/IRL.jpg?raw=true)

Older pic of CroXY

![Image of CroXY](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_Small.png?raw=true)
  
![Image of CroXY XY Gantry](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_XYGantry.png?raw=true)

XY Gantry

![Image of CroXY Toolhead Down](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_Toolhead_Down.png?raw=true)

Toolhead

![Image of CroXY Toolhead Up](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_Toolhead_Up.png?raw=true)

Toolhead

![Image of CroXY Z](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_Z.png?raw=true)

Z and Bed

![Image of CroXY Z Lifter NoCroc](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_Z_Lifter_NoCroc.png?raw=true)

Z Lifter with Maxwell Joint

![Image of CroXY Z Lifter Croc](https://github.com/wesc23/CroXY/blob/master/Images/CroXY_Z_Lifter_Croc.png?raw=true)

Crocodile Z lifters are optional!    
