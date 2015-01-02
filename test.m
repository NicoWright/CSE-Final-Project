str = 'halo'

strLength = length( str );
binStr = sprintf( '%08s',dec2bin(strLength) )=='1'

for i = 1:length(str)
    sendChar(ard,str(i))
end



