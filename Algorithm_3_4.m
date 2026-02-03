function [r_vec, v_vec, trajectory_shape] = Algorithm_3_4(r0_vec, v0_vec, delta_t)
% ALGORITHM_3_4 - Given r0_vec, v0_vec, and delta_t, 
% find r_vec and v_vec

global mu

% magnitudes of r0 and v0
r0_mag = norm(r0_vec);
v0_mag = norm(v0_vec);

% Radial component of v
v_r_0 = dot(v0_vec, r0_vec) / r0_mag;

% Reciprocal of alpha of the semimajor axis
alpha = (2 / r0_mag) - ((v0_mag^2) / mu);

alpha_tol = 1e-3;
if alpha > alpha_tol
    trajectory_shape = "ellipse";
elseif alpha < -alpha_tol
    trajectory_shape = "hyperbola";
else
    trajectory_shape = "parabola";
end

% Use algo 3.3 to get universal anomaly X, Stumpffs C and S
[X, C, S] = Algorithm_3_3(r0_mag, v_r_0, alpha, delta_t);
    fprintf('X = %g\n', X);
    fprintf('C = %g\n', C);
    fprintf('S = %g\n', S);

% calculate Lagrange coefficients 
f = 1 - (X^2 / r0_mag) * C;
g = delta_t - (1/sqrt(mu)) * X^3 * S;

% Calculate r_vec and r_mag
r_vec = f * r0_vec + g * v0_vec;
r_mag = norm(r_vec);

% Calculate Lagrance coefficient derivatives
f_dot = (sqrt(mu) / (r_mag * r0_mag)) * (alpha * X^3 * S - X);
g_dot = 1 - (X^2 / r_mag) * C;

% Calculate v_vec
v_vec = f_dot * r0_vec + g_dot * v0_vec;


end