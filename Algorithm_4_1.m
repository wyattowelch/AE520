function [delta, alpha] = Algorithm_4_1(r_vec)
% ALGORITHM_4_1 - given r_vec,  
% find declination and right ascension

% Break r into components
x = r_vec(1);
y = r_vec(2);
z = r_vec(3);

% Magnitude of r
r = norm(r_vec);

% Calculate direction cosines of r
l = x/r;
m = y/r;
n = z/r;

% Calculate declination and right ascension
delta = asind(n);

    % Initial alpha guess
alpha = acosd(l / cosd(delta));

    % Final alpha value based on m
alpha = atan2d(y, x);
if m < 0
    alpha = 360 - alpha;
end


end