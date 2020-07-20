M290 S0	R0				; remove baby stepping
M400

; Home X at the high end of the axis'''


G91		; relative
M564 H0
M913 Z20
G1 Z25	; move down to clear probe.   BUG!, what if at bottom?
M564 H1
M913 Z100

M913 X30 U30
; X
;G1 X+300 F600 H1
; split X and Y motors
M584 X0 U9 Y1 V5 P5
G1 X300 U300 F600 H1
M584 X0:9 Y1:5 P3
M913 X100 U100


G91		; relative
M564 H0
M913 Z20
G1 Z-25	; move back up
M564 H1
M913 Z100

G90
