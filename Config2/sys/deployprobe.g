G90	; absolute positioning
G1 Y90 F12000	; get close.  This will fail if axis not homed
;G1 Y90 F600	; get close.  This will fail if axis not homed
M564 S0	; allow movement outside of print area
G1 X-101 Y105	; approach dock from side
G1 Y126 F3300	; pick up probe
G1 X-71 F3300	; leave dock
G1 Y90 F12000	; get back onto printable area, but don't shear off the probe if bed is high
M564 S1 ; limit axis to print area
