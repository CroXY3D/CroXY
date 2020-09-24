
; *************************************************************************
;
; homeall.g
;
; *************************************************************************



M290 S0	R0				; remove baby stepping
M400

; Home X at the high end of the axis'''

; bug!   add m400 before all m913

G91		; relative
M564 H0
M913 Z20
G1 Z10	; move down to clear probe.   BUG!, what if at bottom?
M913 Z100

M913 X60 U60
; X
;G1 X+300 F1600 H1
; split X and Y motors
M584 X0 U9 Y1 V5 P5
G1 X300 U300 F2600 H1
M584 X0:9 Y1:5 P3
M913 X100 U100


; Y
M913 Y80 V80
;G1 Y+300 F1600 H1
; split X and Y motors
M584 X0 U9 Y1 V5 P5
G1 Y300 V300 F2600 H1		; Move to true up V
M584 X0:9 Y1:5 P3
M913 Y100 V100

; Z
G90
M401		; deploy probe
G1 X40 Y40 F12000	; go to center, offset for probe
G30		; probe das bed
; Bed Level
; 3 point
;G30 P0 X-100 Y0 Z-99999 ; probe near a leadscrew
;G30 P1 X90 Y-95 Z-99999 ; probe near a leadscrew
;G30 P2 X90 Y80 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors
; 4 point
G30 P1 X-100 Y80 Z-99999 ; probe near a leadscrew and calibrate 3 motors
G30 P0 X-100 Y-95 Z-99999 ; probe near a leadscrew
G30 P2 X80 Y-95 Z-99999 ; probe near a leadscrew
G30 P3 X80 Y80 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors



M402		; return probe

G91
;G1 Z-10		; commented out so  leave us away from bed
G90			; back to absolute positioning
G1 X0 Y0 F6000





; X
;OLD
;G1 X+300 F6000 H1
;M400			; Finish move before setting motor currents
;M913 X20		; Reduce motor currents
;G1 X3 H0 F500		; Move a little more to tram up both motors, ignoring endstops
;M400			; Finish move before setting motor current back
;M913 X100

;G1 X-4  F600 H2
;G1 X+10 H1
;G1 X-30 F12000

;OLD
;G1 Y+300 F6000 H1
;M400			; Finish move before setting motor currents
;M913 Y20		; Reduce motor currents
;G1 Y5 H0 F500		; Move a little more to tram up both motors, ignoring endstops
;M400			; Finish move before setting motor current back
;M913 Y100
;G1 Y-4  F600 H2
;G1 Y+10  H1
;G1 Y-30 F12000

