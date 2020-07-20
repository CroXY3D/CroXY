M564 S0	; allow movement outside of print area
G90	; absolute positioning

G1 X-148 Y51 F12000	; approach dock from inliet
G1 X-148 Y107 F3300	; move to dock 
G1 X-120  F3300	; shear probe off
M564 S1 ; limit axis to print area
