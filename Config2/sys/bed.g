;G28 ; home

G91		; relative
M913 Z20
G1 Z25	; move down to clear probe.   BUG!, what if at bottom?
M913 Z100
G90

M401 ; deploy Z probe (omit if using bltouch)

; Bed Level
; 3 point
;G30 P0 X-100 Y0 Z-99999 ; probe near a leadscrew
;G30 P1 X90 Y-95 Z-99999 ; probe near a leadscrew
;G30 P2 X90 Y80 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors
; 4 point
G30 P0 X-100 Y-95 Z-99999 ; probe near a leadscrew
G30 P1 X-100 Y80 Z-99999 ; probe near a leadscrew and calibrate 3 motors
G30 P2 X80 Y-95 Z-99999 ; probe near a leadscrew
G30 P3 X80 Y80 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors




M402 ; retract probe (omit if using bltouch)

G91		; relative
M913 Z20
G1 Z-25	; 
M913 Z100
G90