# CroXY
CroXY is a Crossed Gantry 3D Printer.  Pronounced "Crock-see".  

Designed and built by Wes Cherry (Ocho Camino, wesc@technosis.com)

CroXY is a fully enclosed 3D Quadrap printer with a crossed linear rail gantry design, direct drive extruder and a kinematically mounted bed that moves in Z with reduced triple belt drive. 

  
 ![Small Image of CroXY](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_Small.png?raw=true)
  
It is simple to build, align and provision.  It uses a minimum of printed parts, many of which will be easily machinable out of aluminum. Print quality is superb.

It is a ground up design, loosely based on concepts from the Annex Engineering K2 and the [Hypercube Overkill Project](https://reprap.org/forum/read.php?177,807843,807843).  

The printer has been assembled and is printing with excellent print quality for a couple years now.  It is in active development with new toolheads and several optimizations planned. 

# Major features of CroXY
  - 3060 frame members for stiffness and ease of assembly.
  - Crossed rail gantry design with 4 motors driving 9mm or 12mm XY belts.
  - Triple 4:1 9mm belt driven Z for automatic bed levelling.
  - Linear Rails except the cross rails are MGN12H. 
  - Cross rails are MGN9H for less moving mass.  Both cross rails are backed by either 2020 extruions, 20mm aluminum extrusions or 20mm carbon fiber tubes.  25mm aluminum or carbon fiber tubes are recommended for larger builds for more stiffness.  Rails on the side of the extrusion (vs the top) provide the maximal ringing resistance because the rail plus backer acts like a single much thicker element.  Extensive FEA simulations have been performed on the gantry.
  - Fully Enclosed, with option for 20mm of insulation.  Printer functions fully without panels for materials that do not require insulation.   
  - Bed is 6 to 12mm Mic6 and is kinematically mounted with Maxwell kinematic joints preloaded by magnets. 
  - LGX Lite direct drive extruder with Dragon hot end.
  - Magnetically coupled switch based probe (Euclid) picked up from a dock for super accurate bed probing.  Repeatibility of 0.005mm.
  - Simple, easily accessible belt tensioning.
  - Dedicated area for nozzle purge and wipe. 
  - Z Towers are built on a single 3060 extrusion.  They easily remove from the printer for bench work.
  - BTT Octopus, Fysetc Spyder with Klipper, Duet2 or Duet3 electronics with Reprap firmware 3.
  - Electronics are in the bottom of the machine, for easy access from above.  No flipping or rotating the machine to access the electronics.
  - Nearly all wires are run thru the center channel of 3060 extrusions for a clean looking machine.
  - Built in optional drawer for tools and or a spool that feeds the extruder.  
  - Hour meter.
  - LED status rings, similar to BLV MGN Cube.
  - Feet with sorbothane vibration isolation.
  - Footprint comparable to other printers of same bed size (Footprint is only 5% larger than that of a comparable print volume Railcore)
  - CAD is for 250x250x250 nominal size.  CroXYs as small as 190^3 and as large as 500x350x350 have been built. 
  - Minimal printed parts.  Most are designed to be easily machinable using 0.5" or 12mm thick aluminum for even more stiffness and use in high temp 3D printing.  Aluminum Extrusion Z lifters are already designed and in use.  XY motor base plates are being fabricated and CAD work is done for the Hemera toolhead holder, Maxwell joints, and XY carriages.  All plastic parts aside from the fan manifold will eventually be made out of aluminum.

# CroXY offers a number of advantages over CoreXY designs
  - Belts are shorter and have simple paths, alignment is easier and less ringing
  - Belts can be as wide as 12mm for more accurate positioning and less ringing.
  - Less friction in motion system makes for more accurate positioning making for exceptional layer stacking.
  - 4 motors moving the XY gantry make for more torque for more accurate positioning (1.4x-4x more torque)
  - Motion is simple X motors move X, Y motors move Y, so troubleshooting is easier
  
# Disadvantages of CroXY
  - Requires 3 more rails and 2 more steppers/drivers than a CoreXY.
  - Visibility of the build area is lessened.  Though the printhead has been designed with nozzle visibility in mind.
  - Toolchanging is more difficult, but it is possible.
  - Cost.  It's not a cheap build, but it is still within the price range of similar cube design printers.
  
# Work to be done 
  - Finish lid and enclosure, including front hinges
  - Aluminum parts (many are done!)
  - External insulated enclosure
  - Exhaust Fan and control
  - Some trim pieces
  - Wiring diagram
  - Chamber heater
  
# CAVEATS
CroXY is an advanced build.  You should only attempt to build it if you have successfully built another kit printer.  Building that will give you a lot of experience so you don't make mistakes with CroXY.  

Croxy is a ever growing experimental project. Although the existing machines work and work well, there is no guarantee that yours will. These are homemade machines built by different people, with differing parts. We help where we can, but in the end this is a hobby and we are hobbiests.

A lot of people ask about doing a large format version, with a bed larger than 500x500.  This is uncharted territory and may result in a printer that only performs well printing slowly with low acceleration.  Doing massive prints will take forever.  That said, I have ordered the parts to build a 300x500 CroXY and will be attempting to make something that works well.
  
# DISCORD
We now have a [Discord](https://discord.gg/ryj6wyx) to discuss CroXY!  
  
  
# BOM  
A CroXY build will cost approx $1500 with budget rails.  A first class build with Misumi rails will run around $2500.  An incomplete BOM can be found here [BOM](https://docs.google.com/spreadsheets/d/1nd5IvDQm3_plhFC6qLKJPE1nMU45jPsB3Xuin5mlSXQ/edit?usp=sharing)
Panels have not been specced or priced yet. That is the biggest missing piece from the BOM.

![Build Cost](https://github.com/wesc23/CroXY/blob/master/Images/Build_Cost.png?raw=true)

# SOURCE FILES
CroXY is fully open source with .STP files provided.  Please check the license (Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International) before modifying or deriving from CroXY.  Commercial use or sale of CroXY derived designs is prohibited without approval.

# MEDIA

[Video of CroXY](https://youtu.be/Kx4VfzS_V6c)

[Video of CroXY bed probiing and automatic bed levelling](https://www.youtube.com/watch?v=WyJbbjh8Hpk)

![IRL](https://github.com/CroXY3D/CroXY/blob/master/Images/IRL.jpg?raw=true)

Older picture of CroXY.  It currently looks like the renderings IRL.

![Image of CroXY](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_Small.png?raw=true)
  
![Image of CroXY XY Gantry](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_XYGantry.png?raw=true)

XY Gantry

![Image of CroXY Toolhead Down](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_Toolhead_Down.png?raw=true)

Toolhead

![Image of CroXY Toolhead Up](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_Toolhead_Up.png?raw=true)

Toolhead

![Image of CroXY Z](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_Z.png?raw=true)

Z and Bed

![Image of CroXY Z Lifter NoCroc](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_Z_Lifter_NoCroc.png?raw=true)



