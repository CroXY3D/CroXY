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
G1 Z0.900 F7800.000 ; lift Z
G1 X-102.194 Y-107.772 ; move to first infill point
G1 Z0.300 ; restore layer Z
G1 E0.60000 F2100.00000 ; unretract
G1 F1500
G1 X-102.118 Y-107.637 E0.00245 ; infill
G1 X-102.041 Y-107.502 E0.00336 ; infill
G1 X-101.965 Y-107.368 E0.00428 ; infill
G1 X-101.888 Y-107.233 E0.00519 ; infill
G1 X-101.812 Y-107.098 E0.00611 ; infill
G1 X-101.735 Y-106.964 E0.00703 ; infill
G1 X-101.658 Y-106.829 E0.00794 ; infill
G1 X-101.582 Y-106.695 E0.00886 ; infill
G1 X-101.505 Y-106.560 E0.00977 ; infill
G1 X-101.429 Y-106.425 E0.01069 ; infill
G1 X-101.352 Y-106.291 E0.01160 ; infill
G1 X-101.276 Y-106.156 E0.01252 ; infill
G1 X-100.648 Y-105.051 F7800.000 ; move to first infill point
G1 F1500
G1 X-100.572 Y-104.916 E0.00245 ; infill
G1 X-100.495 Y-104.782 E0.00336 ; infill
G1 X-100.419 Y-104.647 E0.00428 ; infill
G1 X-100.342 Y-104.512 E0.00519 ; infill
G1 X-100.266 Y-104.378 E0.00611 ; infill
G1 X-100.189 Y-104.243 E0.00703 ; infill
G1 X-100.113 Y-104.109 E0.00794 ; infill
G1 X-100.036 Y-103.974 E0.00886 ; infill
G1 X-99.960 Y-103.839 E0.00977 ; infill
G1 X-99.883 Y-103.705 E0.01069 ; infill
G1 X-99.807 Y-103.570 E0.01160 ; infill
G1 X-99.730 Y-103.435 E0.01252 ; infill
G1 X-98.420 Y-102.682 F7800.000 ; move to first infill point
G1 F1500
G1 X-99.726 Y-102.682 E0.09857 ; infill
G1 X-99.522 Y-102.077 E0.04818 ; infill
G1 X-98.254 Y-102.077 E0.09565 ; infill
G1 X-97.736 Y-101.471 E0.06012 ; infill
G1 X-99.318 Y-101.471 E0.11936 ; infill
G1 X-99.114 Y-100.866 E0.04818 ; infill
G1 X-97.218 Y-100.866 E0.14307 ; infill
G1 X-96.700 Y-100.261 E0.06012 ; infill
G1 X-98.910 Y-100.261 E0.16678 ; infill
G1 X-98.870 Y-100.144 E0.00937 ; infill
G1 X-98.663 Y-100.247 E0.01750 ; infill
G1 X-98.368 Y-99.656 E0.04981 ; infill
G1 X-96.182 Y-99.656 E0.16501 ; infill
G1 X-95.663 Y-99.051 E0.06012 ; infill
G1 X-98.658 Y-99.051 E0.22598 ; infill
G1 X-98.747 Y-99.206 F7800.000 ; move to first infill point
G1 F1500
G1 X-98.947 Y-99.606 E0.00682 ; infill
G1 X-98.974 Y-99.051 F7800.000 ; move to first infill point
G1 F1500
G1 X-100.817 Y-99.051 E0.13911 ; infill
G1 X-100.456 Y-98.446 E0.05320 ; infill
G1 X-98.450 Y-98.446 E0.15137 ; infill
G1 X-98.037 Y-97.841 E0.05529 ; infill
G1 X-100.094 Y-97.841 E0.15525 ; infill
G1 X-99.732 Y-97.236 E0.05320 ; infill
G1 X-97.623 Y-97.236 E0.15914 ; infill
G1 X-97.210 Y-96.631 E0.05529 ; infill
G1 X-99.370 Y-96.631 E0.16303 ; infill
G1 X-99.009 Y-96.026 E0.05320 ; infill
G1 X-96.797 Y-96.026 E0.16692 ; infill
G1 X-96.384 Y-95.421 E0.05529 ; infill
G1 X-98.647 Y-95.421 E0.17081 ; infill
G1 X-98.285 Y-94.816 E0.05320 ; infill
G1 X-95.970 Y-94.816 E0.17470 ; infill
G1 X-95.557 Y-94.211 E0.05529 ; infill
G1 X-102.195 Y-94.211 E0.50097 ; infill
G1 X-101.834 Y-93.606 E0.05317 ; infill
G1 X-95.144 Y-93.606 E0.50490 ; infill
G1 X-94.730 Y-93.001 E0.05529 ; infill
G1 X-101.473 Y-93.001 E0.50884 ; infill
G1 X-101.112 Y-92.396 E0.05317 ; infill
G1 X-97.576 Y-92.396 E0.26687 ; infill
G1 X-97.174 Y-91.791 E0.05482 ; infill
G1 X-100.751 Y-91.791 E0.26995 ; infill
G1 X-100.390 Y-91.186 E0.05317 ; infill
G1 X-96.772 Y-91.186 E0.27303 ; infill
G1 X-96.370 Y-90.581 E0.05482 ; infill
G1 X-100.029 Y-90.581 E0.27611 ; infill
G1 X-99.667 Y-89.976 E0.05317 ; infill
G1 X-95.968 Y-89.976 E0.27919 ; infill
G1 X-95.566 Y-89.371 E0.05482 ; infill
G1 X-99.306 Y-89.371 E0.28227 ; infill
G1 X-98.945 Y-88.766 E0.05317 ; infill
G1 X-94.842 Y-88.766 E0.30963 ; infill
; stop printing object Lightning.stl id:0 copy 0
G1 E-0.60000 F1200.00000 ; retract
G1 Z4.900 F7800.000 ; lift Z
G1 X0 Y0 F12000