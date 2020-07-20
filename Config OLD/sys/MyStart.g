; preprint macro - machine independent way to start prints.   Assumes slicer will already emit the heatup code. (in Kiss, need to explicitly do that before calling M98 Pstart.g
;
; note - this assumes slicer has relative extrusion enabled
T0
G21	; millimeters
M83	; relative extruder mode
G90	; absolute positioning
M106 S0 	; turn off part fan if it happens to be on
M404 N1.75	; set filament width  - don't set nozzle diam though
M116	; make sure everything up to temp

M98 PMyLightning.g

