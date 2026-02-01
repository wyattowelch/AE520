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

% Global Variables
global mu
mu = 3.986E5 % km^3 / s^2

while keepRunning 

    Algo = input("What algorithm number do you want to run: ");

    if Algo == 0
        disp("Procedure stopped.")
        keepRunning = false;
        return;
    
    elseif Algo == 3.4
        disp("Algo 3.4 selected. (See page 174)")

        r0_vec_I = input("r0_vec_I = ");
        r0_vec_J = input("r0_vec_J = ");
        r0_vec_K = input("r0_vec_K = ");
        r0_vec = [r0_vec_I r0_vec_J r0_vec_K];

        v0_vec_I = input("v0_vec_I = ");
        v0_vec_J = input("v0_vec_J = ");
        v0_vec_K = input("v0_vec_K = ");
        v0_vec = [v0_vec_I v0_vec_J v0_vec_K];

        delta_t = input("What is the delta t? ");

        [r_vec_at_t , v_vec_at_t, traj_shape] = Algorithm_3_4(r0_vec, v0_vec, delta_t)

        disp("Algorithm 3.4 results:")
        fprintf('Position Vector: [%g, %g, %g]\n', r_vec_at_t);
        fprintf('Velocity Vector: [%g, %g, %g]\n', v_vec_at_t);
        fprintf('Trajectory Shape: ' + traj_shape);


        


        keepRunning = false;
    
    else
        disp("Unrecognized Algo")
    end
end
