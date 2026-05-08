function [X, C, S] = Algorithm_3_3(ro, vro, a, dt)
%KEPLER_U Solves the universal Kepler equation for the universal anomaly x
% using Newton's method.
%
% Inputs:
%   dt  = time since x = 0 (s)
%   ro  = radial position (km) when x = 0
%   vro = radial velocity (km/s) when x = 0
%   a   = reciprocal of the semimajor axis (1/km)
%
% Output:
%   x   = universal anomaly (km^0.5)
%   C   = Stumpff function
%   S   = Stumpff function
%
% Notes:
%   Uses global mu (km^3/s^2)

global mu

% Set an error tolerance and a limit on the number of iterations
errorTol = 1.0e-8;
nMax     = 1000;

% Starting value for x
x = sqrt(mu) * abs(a) * dt;

% Iterate on the universal Kepler equation until convergence
n     = 0;
ratio = 1;

while abs(ratio) > errorTol && n <= nMax
    n = n + 1;

    % Calculate C and S Stumpff functions
    z = a * x^2;

    if z > 0
    C = (1 - cos(sqrt(z))) / z;

    sz = sqrt(z);
    S  = (sz - sin(sz)) / (sz^3);

    elseif z < 0
        C = (cosh(sqrt(-z)) - 1) / (-z);

        sz = sqrt(-z);
        S  = (sinh(sz) - sz) / (sz^3);
    
    else
        C = 1/2;
        S = 1/6;
    end


    F = ro*vro/sqrt(mu) * x^2 * C + (1 - a*ro) * x^3 * S + ro*x - sqrt(mu)*dt;

    dFdx = ro*vro/sqrt(mu) * x * (1 - a*x^2*S) + (1 - a*ro) * x^2 * C + ro;

    ratio = F / dFdx;
    x = x - ratio;
end

X = x;


% Deliver a value for x, but report that nMax was reached
if n > nMax
    fprintf('\n **No. iterations of Kepler''s equation = %g', n);
    fprintf('\n            F/dFdx = %g\n', F/dFdx);
end

end