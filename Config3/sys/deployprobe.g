; ***********************************************************
;
; deployprobe.g
;
; ***********************************************************


M400
if sensors.probes[0].value[0]!=1000
	abort "deployprobe: Probe already picked up.  Manually return probe to the dock"	

; Close: Y-100
; Dockside: X-134 Y-131
; Pickup: X-134 Y-149
; DockOut: X-99 Y-149

	
G90	; absolute positioning
G1 Y-100 F12000	; get close.  This will fail if axis not homed
;G1 Y90 F600	; get close.  This will fail if axis not homed
M564 S0	; allow movement outside of print area
G1 X-134 Y-131	; approach dock from side
G1 Y-149 F3300	; pick up probe
G1 X-99 F3300	; leave dock
G1 Y-90 F12000	; get back onto printable area, but don't shear off the probe if bed is high
M564 S1 ; limit axis to print area
M400
G4 P100
if sensors.probes[0].value[0] != 0
	abort "deployprobe: Probe not picked up!"	
	