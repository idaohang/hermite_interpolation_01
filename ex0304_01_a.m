%% Hermite Interpolation
% Numerical Analysis (Math 328) at the City College of New York, CUNY
% Exercise Set 3.4 - 1(a)
% Date: Oct/10/2015
% Author: Minwoo Bae

function H=hermite(x, x_i, f_i, fp_i)
n = length(x_i);
z = zeros(1, 2*n);
H = zeros(2*n, 2*n);

for i=0:n
    z(2*i) = x_i(i);
    z(2*i+1) = x_i(i);
    H(2*i, 0) = f_i(x_i(i));
    H(2*i+1, 0) = f_i(x_i(i));
    H(2*i+1, 0) = fp_i(x_i(i));
end