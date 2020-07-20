; Postprint macro - called by slicer at postfix use M98 -PMyEnd.g


M203 X18000 Y18000 U18000 Z1600     ; Set maximum speeds (mm/min) - Cura hoses it somehow

;G28 ; home - i don't like this because it hits the microswitches and forces a G32 on next print.

; relative, move up 50mm
G91
G1 Z50 F1000	; move up
G90
G1 Y140	F5000 ; move to rear

M106 S0 ; turn off fan
M104 S0 ; turn off hot end
M140 S0 ; turn off bed 
M220 S100	; reset speed override
M221 S100	; reset extruder override


;M300		; beep
