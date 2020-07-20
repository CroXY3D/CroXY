G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
; Filament gcode
M572 D0 S0.056 ; Pressure Advance
G1 Z0.300 F7800.000 ; move to next layer (0)
; printing object Lightning.stl id:0 copy 0
G1 E-0.60000 F1200.00000 ; retract
G1 Z0.900 F7800.000 ; lift Z
G1 X-94.328 Y-88.314 ; move to first perimeter point
G1 Z0.300 ; restore layer Z
G1 E0.60000 F2100.00000 ; unretract
G1 F1500
G1 X-99.196 Y-88.314 E0.36165 ; perimeter
G1 X-103.033 Y-94.742 E0.55611 ; perimeter
G1 X-98.761 Y-94.742 E0.31730 ; perimeter
G1 X-101.848 Y-99.904 E0.44682 ; perimeter
G1 X-99.261 Y-99.904 E0.19218 ; perimeter
G1 X-101.257 Y-105.824 E0.46411 ; perimeter
G1 X-101.001 Y-105.970 E0.02190 ; perimeter
G1 X-94.505 Y-98.385 E0.74187 ; perimeter
G1 X-97.867 Y-98.385 E0.24979 ; perimeter
G1 X-93.648 Y-92.208 E0.55571 ; perimeter
G1 X-96.915 Y-92.208 E0.24268 ; perimeter
G1 X-94.361 Y-88.364 E0.34285 ; perimeter
G1 E-0.60000 F1200.00000 ; retract
G1 Z0.900 F7800.000 ; lift Z
G1 X-96.739 Y-97.789 ; move to first perimeter point
G1 Z0.300 ; restore layer Z
G1 E0.60000 F2100.00000 ; unretract
G1 F1500
G1 X-92.520 Y-91.613 E0.55571 ; perimeter
G1 X-95.804 Y-91.613 E0.24397 ; perimeter
G1 X-93.217 Y-87.719 E0.34730 ; perimeter
G1 X-99.534 Y-87.719 E0.46929 ; perimeter
G1 X-104.082 Y-95.338 E0.65917 ; perimeter
G1 X-99.811 Y-95.338 E0.31724 ; perimeter
G1 X-102.898 Y-100.500 E0.44682 ; perimeter
G1 X-100.090 Y-100.500 E0.20858 ; perimeter
G1 X-102.803 Y-108.545 E0.63071 ; perimeter
G1 X-102.547 Y-108.690 E0.02190 ; perimeter
G1 X-93.210 Y-97.789 E1.06623 ; perimeter
G1 X-96.679 Y-97.789 E0.25768 ; perimeter
G1 X-96.925 Y-97.436 F7800.000 ; move inwards before travel
G1 E-0.60000 F1200.00000 ; retract
G1 Z0.900 F7800.000 ; lift Z
G1 X-102.838 Y-108.905 ; move to first perimeter point
G1 Z0.300 ; restore layer Z
G1 E0.60000 F2100.00000 ; unretract
G1 F1500
G1 X-102.915 Y-109.041 E0.01352 ; perimeter
G1 X-102.993 Y-109.177 E0.01261 ; perimeter
G1 X-103.070 Y-109.313 E0.01170 ; perimeter
G1 X-103.147 Y-109.450 E0.01079 ; perimeter
G1 X-103.225 Y-109.586 E0.00988 ; perimeter
G1 X-103.302 Y-109.722 E0.00897 ; perimeter
G1 X-103.380 Y-109.858 E0.00806 ; perimeter
G1 X-103.457 Y-109.994 E0.00715 ; perimeter
G1 X-103.534 Y-110.131 E0.00624 ; perimeter
G1 X-103.612 Y-110.267 E0.00534 ; perimeter
G1 X-103.689 Y-110.403 E0.00443 ; perimeter
G1 X-103.767 Y-110.539 E0.00352 ; perimeter
G1 E-0.60000 F1200.00000 ; retract


G1 Z4.900 F7800.000 ; lift Z
G1 X0 Y0 F12000