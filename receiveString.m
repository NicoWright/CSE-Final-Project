function Str = receiveString(ard)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%The function has 1 parameter: an Arduinio object. The function receives a%
%string from the serial connection and returns that string.               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Receives the length of the string from sendString
%Loops for that amount of times.
strLength = double(receiveChar(ard));
Str = zeros(1,strLength);

for i = 1:strLength
    Str(i) = receiveChar(ard);
end

Str = fprintf('%s',Str);

end %end function