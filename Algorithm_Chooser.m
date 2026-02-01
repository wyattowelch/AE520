%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% AE520 Algorithm Chooser - Wyatt Welch
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Basic premise is to ask what algorithm to run, assign the needed
% variables, and solve the equations, then reask what next algoritm to do.

% Maybe it will suggest previous variables, and you can replace if needed?

disp("Start procedure")

keepRunning = true;

while keepRunning 

    Algo = input("What algorithm number do you want to run: ");

    if Algo == 0
        disp("Procedure stopped.")
        keepRunning = false;
        return;
    
    elseif Algo == 3.4
        disp("Algo 3.4 selected.")
        keepRunning = false;
    
    else
        disp("Unrecognized Algo")
    end
end
