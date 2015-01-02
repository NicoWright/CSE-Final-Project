function sendBit(ard,bit)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%If the bit is 0, send an on/1 signal to the LED (using digitalWrite) for  %
%LO_DURATION, then switch the LED back off by sending an off signal. If the% 
%bit is 1, send an on signal to the LED for HI_DURATION. The way to do this%
%is to switch the LED on then pause for either LO_DURATION or HI_DURATION. %
%After pausing for LO_DURATION or HI_DURATION, switch off the LED and      %
%pause for SPACE_DURATION                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global HI_DURATION
global LO_DURATION
global SPACE_DURATION

%Sets D5 on the arduino as output
ard.pinMode(5,'output');

%The light comes on and stays on for LO_DURATION to send a 0
if bit == 0
        ard.digitalWrite(5,1);
        pause(LO_DURATION)
        ard.digitalWrite(5,0);
        pause(SPACE_DURATION)
%The light comes on and stays on for HI_DURATION  to send a 1      
elseif bit ==1
    ard.digitalWrite(5,1);
    pause(HI_DURATION)
    ard.digitalWrite(5,0);
    pause(SPACE_DURATION)
end

%SPACE_DURATION puts a timer between sending each bit.
%This gives Matlab time to recieve the bit and prepare to receice another

end %end function
        