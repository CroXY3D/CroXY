G90	; absolute positioning
G1 X-120 F12000	; get close.  This will fail if axis not homed
M564 S0	; allow movement outside of print area
G1 X-120 Y107	; approach dock from side
G1 X-148 F3300	; pick up probe
G1  Y51 F3300	; leave dock
G1 X-120 F12000	; get back onto printable area, but don't shear off the probe if bed is high
M564 S1 ; limit axis to print area
