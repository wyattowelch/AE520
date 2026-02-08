%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% AE520 Algorithm Chooser - Wyatt Welch
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Basic premise is to ask what algorithm to run, assign the needed
% variables, and solve the equations, then reask what next algoritm to do.

% Maybe it will suggest previous variables, and you can replace if needed?


%{

Current Algorithms:

    Algo 3.3: 
        Inputs: dt, r0, vr0, 1/a
        Outputs: X, C, S

    Algo 3.4:
        Inputs:r0_vec, v0_vec, dt
        Outputs: r_vec, v_vec

    Algo 4.1:
        Inputs: r_vec
        Outputs: delta, alpha

%}

keepRunning = true;

% Global Variables
global mu

mu = 3.986E5; % km^3 / s^2


disp("Start procedure")
while keepRunning 

        Algo = input("What algorithm number do you want to run: ");

    if Algo == 0
        disp("Procedure stopped.")
        keepRunning = false;
        disp("Procedure Ended")
        return;
    
    elseif Algo == 3.4
        disp("Algo 3.4 selected. (See page 174)")

            % Initialize

        r0_vec_I = input("r0_vec_I = ");
        r0_vec_J = input("r0_vec_J = ");
        r0_vec_K = input("r0_vec_K = ");
        r0_vec = [r0_vec_I r0_vec_J r0_vec_K];

        v0_vec_I = input("v0_vec_I = ");
        v0_vec_J = input("v0_vec_J = ");
        v0_vec_K = input("v0_vec_K = ");
        v0_vec = [v0_vec_I v0_vec_J v0_vec_K];

        delta_t = input("What is the delta t? ");

        disp("Starting Algo")
        [r_vec_at_t , v_vec_at_t, traj_shape] = Algorithm_3_4(r0_vec, v0_vec, delta_t);

            % Results

        disp("Algorithm 3.4 results:")
        fprintf('Position Vector: [%g, %g, %g]\n', r_vec_at_t);
        fprintf('Velocity Vector: [%g, %g, %g]\n', v_vec_at_t);
        fprintf('Trajectory Shape: ' + traj_shape + "\n");
        
            % Closing

        restart = input("Run another algorithm? (1/0 for Y/N) \n");
        if restart == 1
        elseif restart == 0
            keepRunning = false;
            disp("Procedure Ended")
        end

    elseif Algo == 4.1
        disp("Algo 4.1 selected. (See page 187)")
            % Initialize

        r_vec_I = input("r_vec_I = ");
        r_vec_J = input("r_vec_J = ");
        r_vec_K = input("r_vec_K = ");
        r_vec = [r_vec_I, r_vec_J, r_vec_K];

        disp("Starting Algo")        
        [delta, alpha] = Algorithm_4_1(r_vec);

            % Results

        disp("Algorithm 4.1 results:")
        fprintf('Declination (delta): %g\n', delta);
        fprintf('Right Ascension (alpha): %g\n', alpha);

        
            % Closing

        restart = input("Run another algorithm? (1/0 for Y/N) \n");
        if restart == 1
        elseif restart == 0
            keepRunning = false;
            disp("Procedure Ended")
        end


    elseif Algo == 4.3
        disp("Algo 4.3 selected. (See page 205)")

            % Initialize

        skipSetup = 0;

        if exist('Q11', 'var')
            fprintf(['Q Matrix: \n' ...
                '[%g, %g, %g\n' ...
                '%g, %g, %g\n' ...
                '%g, %g, %g]\n'], QMatrix);

            isCorrect = input("Is this the correct Q Matrix? (1/0)\n");

            if isCorrect == 1
                skipSetup = 1;
            else
                skipSetup = 0;
            end
        end
        
        checkMatrix = true;
        while checkMatrix == true

            if skipSetup == 0
                disp("Insert 3x3 Q matrix, left to right, top to bottom\n" + ...
                    "      Q11  Q12  Q13\n" + ...
                    "Q  =  Q21  Q22  Q23\n" + ...
                    "      Q31  Q32  Q33")
                
                Q11 = input("Q11 = ");
                Q12 = input("Q12 = ");
                Q13 = input("Q13 = ");
        
                Q21 = input("Q21 = ");
                Q22 = input("Q22 = ");
                Q23 = input("Q23 = ");
        
                Q31 = input("Q31 = ");
                Q32 = input("Q32 = ");
                Q33 = input("Q33 = ");
        
                QMatrix = [Q11, Q12, Q13;
                           Q21, Q22, Q23;
                           Q31, Q32, Q33];

                disp(QMatrix)
                rewriteMatrix = input("Rewrite Matrix? (1/0)\n");
                if rewriteMatrix == 1
                    continue
                else
                    checkMatrix = false;
                end
            else
                checkMatrix = false;
            end
        end

        [alpha, beta, gamma] = Algorithm_4_3(QMatrix)
        
            % Results

        disp("Algorithm 4.3 results:")
        
            % Closing

        restart = input("Run another algorithm? (1/0 for Y/N) \n");
        if restart == 1
        elseif restart == 0
            keepRunning = false;
            disp("Procedure Ended")
        end        

    else
        disp("Unrecognized Algo")
    end


%{
Template


    elseif Algo == x.x
        disp("Algo x.x selected. (See page xxx)")

            % Initialize
        
            % Results

        disp("Algorithm x.x results:")
        
            % Closing
            
        restart = input("Run another algorithm? (1/0 for Y/N) \n");
        if restart == 1
        elseif restart == 0
            keepRunning = false;
            disp("Procedure Ended")
        end        

%}




%{
% If we want to add function to check if a variable already exists, use
% this template block when setting initial values:
% Yes, its AI, dont judge me i didnt wanna build that whole function for a
tiny detail


        
if exist(varName, 'var')
    % Get value using eval to handle the string name
    val = eval(varName);
    
    % Display current value/matrix
    fprintf('Currently, %s =\n', varName);
    disp(val);
    
    change = input('Do you want to change this? (1/0 for Y/N): ');
    
    if change == 1
        if ismatrix(val) && numel(val) > 1
            % Loop to fill in each matrix element
            [rows, cols] = size(val);
            fprintf('Updating %dx%d matrix:\n', rows, cols);
            for r = 1:rows
                for c = 1:cols
                    prompt = sprintf('Enter value for [%d,%d]: ', r, c);
                    val(r,c) = input(prompt);
                end
            end
        else
            % Single value update
            val = input(['Enter new value for ', varName, ': ']);
        end
        
        % Assign updated value back to the variable name
        assignin('base', varName, val);
        disp('Variable updated successfully.');
    end
end

%}

end
