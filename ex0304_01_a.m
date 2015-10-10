%% Hermite Interpolation
% Numerical Analysis (Math 328) at the City College of New York, CUNY
% Exercise Set 3.4 - 1(a)
% Date: Oct/10/2015
% Author: Minwoo Bae

function H = hermite(x, x_i, f_i, fp_i)
n = length(2*x_i);
H = zeros(n+1, n+1);