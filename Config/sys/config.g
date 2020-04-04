; ---------------------------------------------------------------------------------------------------------
; 
; TUBECORE config.g
;
; ---------------------------------------------------------------------------------------------------------

; General preferences

G90                                 ; Send absolute coordinates...
M83                                 ; ...but relative extruder moves



; Network
M550 PCruXY                    ; Set machine name
M552 P192.168.1.111 S1              ; Enable network and set IP address
M553 P255.255.255.0                 ; Set netmask
M554 P192.168.1.1                   ; Set gateway
M586 P0 S1                          ; Enable HTTP
M586 P1 S0                          ; Disable FTP
M586 P2 S0                          ; Disable Telnet

; Drives
M569 P0 S0                         ; X Front Drive 0 goes forwards

M569 P1 S0                        ; Y Front Drive 1 goes backwards
M569 P2 S0                        ; Z Left Drive 2 goes forwards (z)	
M569 P3 S1                        ; Z Right Front Drive 3 goes forwards 
M569 P4 S0  	                  ; X Front Drive 4 goes forwards F6 is blanking time, diff for every stepper to make idle noise less

; Duex5 Drives
M569 P5 S1			  ; Y Rear Drive 5 goes forwards
M569 P6 S1			  ; Extruder Drive 6 goes forwards		

;M569 P7 S1
M569 P8 S0			  ; Z Right Rear Drive 8 goes forwards
M569 P9 S1			  ; X Rear Drive 9 goes forwards


M584 X0:9 Y1:5 Z2:4:8 E6


; ORIGINAL
M350 X16:16 Y16:16 Z16:16:16 I1			; 16 microstepping interpolation
M350 E32 I0					; 32 makes for prettiest		
M92 X160:160 Y160:160 Y400:400 Z1600:1600:1600 E818    	; Steps/mmm

; TESTING MODS
;M350 X64:64 Y64:64
;M92 X640:640 Y640:640

;M350 E64 I0
;M92 E1636


; **************************************
; * SPEED, ACCEL and JERK
; **************************************
M203 X24000:24000 Y24000:24000  Z1000:1000:1000 E3600   ; Set maximum speeds (mm/min)  - keep in sync with macros/ZPostprint.g
M201 X1872 Y1872 Z300:300:300 E1000		; Set Accel (mm^2/s)
M566 X900:900 Y900:900 Z25:25:25 E12000 		; Set "Jerk" (mm/min)
M593 F54	 			     ; wqs 49 Set Dynamic Acceleration Adjustment (freqency, avoid this when accelerating)
M906 X1500 Y1500 Z1500 E1200  I25    ; Set motor currents (mA) and motor idle factor in per cent
M84 S300                             ; Set idle timeout

; TESTING MODS
;M566 X600:600 Y600:600

M208 X-125 Y-130 Z0 S1 ; set axis minima. setting xMin to -130 causes probe to jump out because nobody knows how magnets work
M208 X130 Y128 Z250 S0 ; set axis maxima

; Endstops
M574 X2 Y2 S1                  ; Endstops X at High End, Y at High End, S=1 - Active High (NC)

; Z-Probe
M558 P5 H13 F320 T12000  ; set Z probe type to switch and the dive height + speeds.
;M558 H3 ;*** Remove this line after delta calibration has been done and new delta parameters have been saved
G31 P500 X-21.1 Y45.7 Z17.0 ; set Z probe trigger value, offset and trigger height
M557 X-100:100 Y-100:100 S80 ; define mesh grid


; Define locations of 3 leadscrew pivots
; corner M671 X-25:294:134 Y-16:-16:340 S10  ; SXX is max to trim leadscrews to level
;M671 X-165:154:-6 Y-156:-156:200 S1  ; SXX is max to trim leadscrews to level
M671 X-6:156:156 Y0:-165:154		; BUG! these aren't correct.

; Heaters
; Bed
M305 P0 H0 T100000 B4138 C0 R4700      ; Set thermistor + ADC parameters for heater 0
M143 P0 H0 S120                        ; Set temperature limit for heater 0 to 120C
M140 H0 P0				; define heater so shows up in DWC

; Extruder

M305 P4 R4700 T100000 B4725 C7.06e-8 S"Volcano"; E3D V6 Semitec GT-104 thermistor cartridge
M143 H4 S280                        ; Set temperature limit for heater 6 to 280C

M307 H4 A380.3 C181.9 D6.1 S1.00 V24.3 B0



; Fans HEF on Fan3 PC on Fan4

// HE Fan
M106 P3 S255 L255 I0  F500 H4 T50 
// PC Fan
M106 P4 S0 I0 F500 H-1 C"ExtruderFan" 		;  part cooling ,

; Tools

M563 P0 D0 H4 F4 S"Hemera"           ; Define tool 0, Drive 3 , E3 Heater (H4)  (duex5) Fan 3 (duex5 12v)
G10 P0 X0 Y0 Z0                     ; Set tool 0 axis offsets
G10 P0 R0 S0                        ; Set initial tool 0 active and standby temperatures to 0C



;M564 H0 S0                            ; Allow movement for axis that haven't been homed.


; Extruder configuration
M200 D1.75				; Filament Diameter
M404 N1.75 D0.40			; Filament Diam, and assume 0.40 nozzle
M207 S0.6 F1200 T1200			; Set retract length and speed in case slicer emits hardware retracts.
M572 D0 S.054				; tuned 26 mar 2020.  Volcano, 0.4mm nozzle. 100mms, 3k accel.  simple cube, silk PLA

; Miscellaneous
T0                                  ; Select first tool

;M501                                ; Execute config-override.g