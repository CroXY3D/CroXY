
M400

; Home X at the high end of the axis'''


G91
M564 H0
G1 Z25	; move down to clear probe.   BUG!, what if at bottom?

; X
G1 X+300 F6000 H1
G1 X-4  F600 H2
G1 X+10 H1
G1 X-30 F12000

; Y
G1 Y+300 F6000 H1
G1 Y-4  F600 H2
G1 Y+10  H1
G1 Y-30 F12000

; Z
G90
M401		; deploy probe
G1 X0 Y0 F12000	; go to center
G30		; probe das bed


; Bed Level?
G30 P0 X-100 Y0 Z-99999 ; probe near a leadscrew
G30 P1 X95 Y-95 Z-99999 ; probe near a leadscrew
G30 P2 X95 Y80 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors

M402		; return probe

G91
;G1 Z-25		; commented out so  leave us away from bed
G90			; back to absolute positioning
G1 X0 Y0 F6000


