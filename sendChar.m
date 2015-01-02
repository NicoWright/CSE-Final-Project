function sendChar(ard,char)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%The sendChar function that has 2 parameters: an Arduino object and a     %
%character. The function converts the character to 8 bits and sends those %
%bits to the Arduino board by calling the sendBit function 8 times.       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Display the character currently sending
fprintf('Sending character: %s\n',char)

%This converts char to 8 bits
bits = sprintf( '%08s\n',(dec2bin(char)) )== '1';

%Send each bit
for i = 1:8
    bit = bits(i);
    fprintf('%d',bit)
    sendBit(ard,bit)
end
fprintf('\n')

end %end function
    