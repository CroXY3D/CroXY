;G28 ; home
M401 ; deploy Z probe (omit if using bltouch)
G30 P0 X-100 Y0 Z-99999 ; probe near a leadscrew
G30 P1 X100 Y-80 Z-99999 ; probe near a leadscrew
G30 P2 X100 Y80 Z-99999 S3 ; probe near a leadscrew and calibrate 3 motors
M402 ; retract probe (omit if using bltouch)