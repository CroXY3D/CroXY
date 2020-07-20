; Filament Change Macro
M83					; relative extruder moves
G1 E-1 F2500		; retract 
G91					; relative moves
G1 Z25 F5000			; raise nozzle 25mm
G90					; absolute moves
M564 S0
G1 X-140 Y-120 F6000
M564 S1
; G1 X0 Y85 F5000		; move head out of the way of the print
M117 Change ye filament!