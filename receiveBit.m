function bit = receiveBit(ard)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This function has a single parameter: a serial connection. It returns as% 
%an output parameter the bit it receives (either 0 ot 1).                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global AVG_LEVEL
global AVG_DURATION

%This keeps checking to make sure the light level is low
test = ard.analogRead(5);
while test < AVG_LEVEL
    test = ard.analogRead(5);
end
%As soon as the light level becomes high a timer starts
tic
%This while loop reads the light while it is high
while test > AVG_LEVEL
    test = ard.analogRead(5);
end
%We stop the timer here
time = toc;
%The bit is assigned a 1 or 0 based on how long the light was on    
if time > AVG_DURATION
    bit = 1;
elseif time < AVG_DURATION
    bit = 0;
end

end %end function

