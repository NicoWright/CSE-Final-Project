function str = receiveChar(ard)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%The function receives 8 bits from the Arduino board by calling the recvBit% 
%function 8 times, then turns those bits into a character, and returns     %
%that character                                                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bits = zeros(1,8);

%Receive each bit
for i = 1:length(bits)
    bit = receiveBit(ard);
    fprintf('%d',bit);
    bits(i) = bit;
end

%returns the character it received
str = char(bin2dec(char(sprintf('%d',bits))));

fprintf('\n')
fprintf('receiveChar got char %s\n',str);

end %end function


    

