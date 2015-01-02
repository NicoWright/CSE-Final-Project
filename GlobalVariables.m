%This script sets the Global variables for the program%
global HI_LEVEL
global LO_LEVEL
global AVG_LEVEL
global HI_DURATION
global LO_DURATION
global AVG_DURATION
global SPACE_DURATION
global ard

HI_LEVEL = 900;
LO_LEVEL = 200;
AVG_LEVEL = mean([HI_LEVEL,LO_LEVEL]);
HI_DURATION = 0.667;
LO_DURATION = 0.200;
AVG_DURATION = mean( [HI_DURATION, LO_DURATION]);
SPACE_DURATION = 0.200;
ard = arduino('COM4');

