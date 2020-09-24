
CroXY
Send code...
Status
Idle
Mode: FFF
Tool Position
X
-120.0
Y
-120.0
Z
26.60
Extruder Drives
Drive 0
743.6
Speeds
Requested Speed
0 mm/s
Top Speed
0 mm/s
Sensors
Vin
24.3 V
MCU Temperature
41.9 C
Z-Probe
1000
 Tools
 Extra
 Control All
Tool	Heater	Current	Active	Standby
Hemera
T0 - Load Filament	hemera
active	19.6 C	
0
0
Bed	bed
active	19.5 C	
0
0
Temperature Chart
System Directory
0:/sys/config.g
; ---------------------------------------------------------------------------------------------------------
; 
; CroXY config.g
;
; ---------------------------------------------------------------------------------------------------------

; General preferences

G90                                 ; Send absolute coordinates...
M83                                 ; ...but relative extruder moves

; Network
M550 PCroXY                    ; Set machine name
M552 P192.168.1.111 S1              ; Enable network and set IP address
M553 P255.255.255.0                 ; Set netmask
M554 P192.168.1.1                   ; Set gateway
M586 P0 S1                          ; Enable HTTP
M586 P1 S0                          ; Disable FTP
M586 P2 S0                          ; Disable Telnet

; PanelDue
M575 P1 S1 B57600

; Drives
M569 P0 S1                         ; X Front Drive 0 goes forwards
M569 P1 S1                        ; Y Front Drive 1 goes forwards
M569 P2 S0                        ; OLD!  Driver burned out Z Left Drive 2 goes backwards (z)	
M569 P3 S0                        ; Z Left Drive 3 goes forwards 
M569 P4 S0  	                  ; Z Right Front Drive 4 goes forwards

; Duex5 Drives
M569 P5 S0			  ; Y Rear Drive 5 goes backwards
M569 P6 S1			  ; Extruder Drive 6 goes forwards		

;M569 P7 S1
M569 P8 S0			  ; Z Right Rear Drive 8 goes backwards
M569 P9 S0			  ; X Rear Drive 9 goes backwards




M584 X0:9 Y1:5 Z3:4:8 E6 U9 V5 P3	; config U, V for splitting when homing, but only show P=3 axis in DWC


; ORIGINAL
M350 X16:16 U16 Y16:16 V16 Z16:16:16  I1			; 16 microstepping interpolation
M350 E32 I0					; 32 makes for prettiest		
M92 X160:160 U160 Y160:160 V160 Z1600:1600:1600 E818 	; Steps/mmm



; **************************************
; * SPEED, ACCEL and JERK
; **************************************
M203 X24000:24000 U24000 Y24000:24000 V24000  Z1000:1000:1000 E3600   ; Set maximum speeds (mm/min)  - keep in sync with macros/ZPostprint.g
;M201 X1966 U1966 Y966 V1966 Z300:300:300 E1000		; Set Accel (mm^2/s) ; Tuned 6 Jun 2020 via Kiss <TUNINGVAL>
M201 X3500 U3500 Y3500 V3500 Z300:300:300 E1000		; Set Accel (mm^2/s) ; Tuned 16 Aug 20 via PS Accel.  This is where the curves look best
;M201 X6500 U6500 Y6500 V6500 Z300:300:300 E1000		; Set Accel (mm^2/s) ; Tuned 16 Aug 20 via PS Accel.  Faster version This is where the curves look best


M566 X566 U566 Y566 V566 Z25 E12000 		; Set "Jerk" (mm/min) ; Tuned 6 Jun 2020 via Kiss <TUNINGVAL>
;M593 F54	 			     ; wqs 49 Set Dynamic Acceleration Adjustment (freqency, avoid this when accelerating)
M906 X1500 U1500 Y1500 V1500 Z1500 E1000  I25    ; Set motor currents (mA) and motor idle factor in per cent
M84 S300                             ; Set idle timeout
;M593 F50
; TESTING MODS
;M566 X600:600 Y600:600

M208 X-125 U-125 Y-130 V-130 Z0 S1 ; set axis minima. setting xMin to -130 causes probe to jump out 
M208 X130 U130 Y128 V128 Z200 S0 ; set axis maxima

; Endstops
;RRF2 M574 X2 U2 Y2 V2 S1                  ; Endstops X at High End, Y at High End, S=1 - Active High (NC)
M574 X2 S1 P"xstop"
M574 U2 S1 P"e0stop"
M574 Y2 S1 P"ystop"
M574 V2 S1 P"e1stop"


; ********** Z-Probe ****************
; ********** Z-Probe ****************
; ********** Z-Probe ****************
; ********** Z-Probe ****************
; ********** Z-Probe ****************
; ********** Z-Probe ****************
; ********** Z-Probe ****************
; ********** Z-Probe ****************
; ********** Z-Probe ****************
;;;;;;;;;;;;;;;;;;;;;;;;;;;; RRF2 M558 P5 H8 F320 T12000 A1 S.01 ; set Z probe type to switch and the dive height + speeds.  Probe A times
M558 K0 P5 C"^zprobe.in" H8 F320 T12000 A1 S0.01
; ***********************************
;;;;;;;;;;;;;;;;;;;;;;;;;;; RRF2: G31 P500 X-41.48 Y46.08 Z18.05 ;   set Z probe trigger value, offset and trigger height.  Higher numbers makes nozzle closer to bed
G31 K0 P500 X-42.57 Y-36.21 Z2.15 ; CHECK for LOOSE things first! set Z probe trigger value, offset and trigger height.  Higher numbers makes nozzle closer to bed
; ***********************************

M557 X-80:80 Y-80:80 S25 ; define mesh grid


; Define locations of 3 leadscrew pivots
; corner M671 X-25:294:134 Y-16:-16:340 S10  ; SXX is max to trim leadscrews to level
;M671 X-165:154:-6 Y-156:-156:200 S1.0  ; SXX is max to trim leadscrews to level

M671 X-130:130:130 Y0:-115:115 S10

; Heaters
; Bed
; RRF2 M305 P0 H0 T100000 B4138 C0 R4700      ; Set thermistor + ADC parameters for heater 0
M308 S0 P"bedtemp" Y"thermistor"  T100000 B4138 C0 R4700 A"bed"
M950 H0 C"bed_heat" T0
M143 P0 H0 S120                        ; Set temperature limit for heater 0 to 120C
M140 H0 P0				; define heater so shows up in DWC
M307 H0 A151.0 C261.6 D1.4 V24.3 B0				;gain 151.0, time constant 261.6, dead time 1.4, max PWM 1.00, calibration voltage 24.3, mode PID

; Extruder

; RRF2 M305 P1 X4 R4700 T100000 B4725 C7.06e-8 S"Volcano"; E3D V6 Semitec GT-104 thermistor cartridge
M308 S1 P"e3temp" Y"thermistor" R4700 T100000 B4725 C7.06e-8 A"hemera"
M950 H1 C"e0heat" T1
M143 H1 S280                        ; Set temperature limit for heater 1 to 280C
M307 H1 A380.3 C181.9 D6.1 S1.00 V24.3 B0

; Water Test
;M305 P2 X5 R4700 T100000 B4725 C7.06e-8 S"WaterTherm"; E3D V6 Semitec GT-104 thermistor cartridge
;M143 H2 S280                        ; Set temperature limit for heater 2 to 280C
;M307 H2 A380.3 C181.9 D6.1 S1.00 V24.3 B0

; fake water test tool
;M563 P1  H2 S"Waterboy"



; Fans HEF on Fan3 PC on Fan4
;// HE Fan (#3, for historical reasons)
; RRF2 M106 P3 S255 L255 I0  F500 H1 T50 
; changed to fan 0
M950 F0 C"duex.fan3" Q500 
M106 P0 S1  H1 T50

;// PC Fan
; RRF2 M106 P4 S0 I0 F500 H-1 C"ExtruderFan" 		;  part cooling ,
; Changed to fan 1
M950 F1 C"duex.fan4" Q500
M106 P1 H-1

; Tools
M563 P0 D0 H1 F1 S"Hemera"           ; Define tool 0, Drive 0 ,  Heater 1 (H1)  (duex5) Fan 3 (duex5 12v)
G10 P0 X0 Y0 Z0                     ; Set tool 0 axis offsets
G10 P0 R0 S0                        ; Set initial tool 0 active and standby temperatures to 0C


; Extruder configuration
;M200 D1.75				; Filament Diameter
;M404 N1.75 D0.40			; Filament Diam, and assume 0.40 nozzle
;M207 S0.6 F1200 T1200			; Set retract length and speed in case slicer emits hardware retracts.
;M572 D0 S.054				; tuned 26 mar 2020.  Volcano, 0.4mm nozzle. 100mms, 3k accel.  simple cube, silk PLA

; Miscellaneous
; configure currently printing status pin for hour meter
M950 P0 C"e1heat"




T0                                  ; Select first tool

;M564 H0 S0                            ; Allow movement for axis that haven't been homed.

;M501                                ; Execute config-override.g
