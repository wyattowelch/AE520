m = [10 10 8 8 12 12];
x = [1 -1 4 -2 3 -3];
y = [1 -1 -4 2 3 -3];
z = [1 -1 4 -2 -3 3];

m_sum = sum(m);
x_G = sum(m .* x) / m_sum;
y_G = sum(m .* y) / m_sum;
z_G = sum(m .* z) / m_sum;

n = length(m);
for i = 1:n
    xr = x(i) - x_G;
    yr = y(i) - y_G;
    zr = z(i) - z_G;

    I_i = [m(i) * (yr^2 + zr^2),  -m(i) * xr * yr,  -m(i) * xr * zr;
           -m(i) * xr * yr,  m(i) * (xr^2 + zr^2),  -m(i) * yr * zr;
           -m(i) * xr * zr,  -m(i) * yr * zr,  m(i) * (xr^2 + yr^2)];

    if i == 1
        I_G = I_i;
    else
        I_G = I_G + I_i;
    end
end

I_G = I_G([3 2 1],[3 2 1]);
disp(I_G)

V = [1 2 2];
u_v = V / norm(V);

I_V_prime = u_v * I_G * u_v';
disp(I_V_prime)