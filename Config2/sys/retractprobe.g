M564 S0	; allow movement outside of print area
G90	; absolute positioning

G1 X-71 Y126 F12000	; approach dock from inlet
G1 X-101 Y126 F3300	; move to dock 
G1 Y105  F3300	; shear probe off
M564 S1 ; limit axis to print area
