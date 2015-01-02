function sendString(ard,str)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This function has 2 parameters: a serial connection, and a string. The% 
%function sends that string over the serial connection. The function   %
%returns nothing. Use the sendChar function inside this function.      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Gets the length of the string and sends to receiveString
%receiveString loops for this amount of times
strLength = char(length(str));
sendChar(ard,strLength)

%Sends String
for i = 1:length(str)
    sendChar(ard,str(i));
end

end %end function