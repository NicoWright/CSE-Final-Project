%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%_Courtney^2                                      %
%Nicomario Courtney Wright & Allan Courtney Bakker%                 
%Final Project                                    %
%The use of two arduinos equipped with light      %
%sensors and LED's to send a string               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

GlobalVariables;
again = 1;
while again == 1;

%Main Menu
disp('1) Enter 1 to start sending a string');
disp('2) Enter 1 to start receiving a string');
disp('3) Enter 3 to exit the program')
choice = input('');

%Returns an error if choice is not 1 or 2 or 3
%Loops until a valid choice is made
while (choice ~= 1) && (choice ~= 2) && (choice ~= 3)
    disp('Your choice must be 1,2 or 3');
    fprintf('\n')
    
    disp('1) Enter 1 to start sending a string');
    disp('2) Enter 1 to start receiving a string');
    disp('3) Enter 3 to terminate the program')
    choice = input('');
end

if choice == 1 %Start sending string
    str = input('Enter the string you wish to send: \n','s');
    disp('Sending your string..');
    sendString(ard,str)
    
elseif choice == 2  %Start receiving string
    receiveString(ard)
    
elseif choice == 3 %Exits
    break
end

if choice == 3
    break
    
else
again = input('Would you like to go again?\n1 for yes, anything else for no');
end

if again ~= 1 || choice == 3
    disp('Program will now terminate');

end

end