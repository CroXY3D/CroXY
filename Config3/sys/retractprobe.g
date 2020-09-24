; ***********************************************************
;
; retractprobe.g
;
; ***********************************************************


M400
if sensors.probes[0].value[0] != 0
	abort "retractprobe: Probe not currently picked up!"	


; Close: Y-100
; Dockside: X-134 Y-131
; Pickup: X-134 Y-149
; DockOut: X-99 Y-149

M564 S0	; allow movement outside of print area
G90	; absolute positioning

G1 X-99 Y-149 F12000	; approach dock from inlet (DockOut)
G1 X-134 Y-149 F3300	; move to dock 
G1 Y-131  F3300	; shear probe off
M564 S1 ; limit axis to print area

M400
if sensors.probes[0].value[0] != 1000
	abort "retractprobe: Probe not correctly dropped off in dock!"	

