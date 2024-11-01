# CroXY
CroXY is a Crossed Gantry 3D Printer.  Pronounced "Crock-see".  

Designed and built by Wes Cherry (Ocho Camino, wesc@technosis.com) with help from CLedbetter.

CroXY is a fully enclosed 3D CrossXY printer with a crossed linear rail gantry design, direct drive extruder and a kinematically mounted bed that moves in Z with reduced triple belt drive. 

Version 3 is nearing Beta.   

  
 ![Small Image of CroXY](https://github.com/CroXY3D/CroXY/blob/master/Images/CroXY_Small.png?raw=true)
  
It is simple to build, align and provision.  The design requires no printed parts aside from the cooling duct.   Print quality is superb. 

The printer has been assembled and is printing with excellent print quality for a many years now.  It is in active development. 

# Major features of CroXY
  - All metal design (Except for cooling duct).  CroXY uses the Ice Cream Sandwich design pattern where printer structures are made from laser cut aluminum plate with standoffs.
  - 3060 frame members for stiffness and ease of assembly.  Corner towers can be 6060.
  - Crossed rail gantry design with 4 motors (5mm or 8mm shafts) driving 9mm or 12mm XY belts.  Motor shafts are supported with a bearing on their end to reduce flex.
  - Triple 4:1 9mm belt driven Z for automatic bed levelling.
  - Linear Rails except the cross rails are MGN12H. 
  - Cross rails are MGN9H for less moving mass.  Both cross rails are backed by a flat 4.7mm thick 6061 aluminum backer.  Extensive FEA simulations have been performed on the gantry.
  - Fully Enclosed, Coming soon!   
  - Bed is 6 to 12mm cast aluminum and is kinematically mounted with Maxwell kinematic joints preloaded by magnets. 
  - Extruders supported: LGX Lite, VZ Hextrudort and Orbiter.
  - Hotends supported: Goliath water and air cooled, Chube.
  - Part cooling is CPAP or dual Axial 4028 fans
  - Magnetically coupled switch based probe (Euclid) picked up from a dock for super accurate bed probing.  Repeatibility of nearly 0.001mm.
  - Simple, easily accessible belt tensioning.
  - Dedicated area for nozzle purge and wipe. 
  - Z Towers are built on a single 3060 extrusion.  They easily remove from the printer for bench work.
  - BTT Octopus, Fysetc Spyder with Klipper, Duet2 or Duet3 electronics with Reprap firmware 3.
  - Electronics are in the bottom of the machine, for easy access from above.  No flipping or rotating the machine to access the electronics.
  - Nearly all wires are run thru the center channel of 3060/6060 extrusions for a clean looking machine.
  - Built in optional drawer for tools and or a spool that feeds the extruder.  
  - Hour meter.
  - LED status rings, similar to BLV MGN Cube.
  - Feet with sorbothane vibration isolation.
  - Footprint comparable to other printers of same bed size (Footprint is only 5% larger than that of a comparable print volume Railcore)
  - CAD is for 300x300x300 nominal size.  CroXYs as small as 200^3 and as large as 500x350x350 have been built. 
  

# CroXY offers a number of advantages over CoreXY designs
  - Belts are shorter and have simple paths, alignment is easier and less ringing
  - Belts can be as wide as 12mm for more accurate positioning and less ringing compared to 6mm wide belts.
  - Less friction in motion system makes for more accurate positioning making for exceptional layer stacking.
  - 4 motors moving the XY gantry make for more torque for more accurate positioning (1.4x-4x more torque)
  - Motion is simple X motors move X, Y motors move Y, so troubleshooting is easier
  
# Disadvantages of CroXY
  - Requires 3 more rails and 2 more steppers/drivers than a CoreXY.
  - Visibility of the build area is lessened.  Though the printhead has been designed with nozzle visibility in mind.
  - Toolchanging is more difficult, but it is possible.
  - Cost.  It's not a cheap build.
  
# Work to be done 
  - Finish lid and enclosure, including front hinges
  - Wiring diagram
  - Chamber heater
  
# CAVEATS
CroXY is an advanced build.  You should only attempt to build it if you have successfully built another kit printer.  Building that will give you a lot of experience so you don't make mistakes with CroXY.  

Croxy is a ever growing experimental project. Although the existing machines work and work well, there is no guarantee that yours will. These are homemade machines built by different people, with differing parts. We help where we can, but in the end this is a hobby and we are hobbiests.


# DISCORD
We now have a [Discord](https://discord.gg/ryj6wyx) to discuss CroXY!  
  
  
# BOM  
A CroXY build will cost approx $XXXX with budget rails.  A first class build with Misumi rails will run around $XXXX. 

# SOURCE FILES
CroXY is fully open source with .STP files provided.  Please check the license (Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International) before modifying or deriving from CroXY.  Commercial use or sale of CroXY derived designs is prohibited without approval.

# MEDIA

The images are quite old.  Will update soon.

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



