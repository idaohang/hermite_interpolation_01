%% Hermite Interpolation
% Numerical Analysis (Math 328) at the City College of New York, CUNY
% Exercise Set 3.4 - 1(a)
% Date: Oct/10/2015
% Author: Minwoo Bae

function H=hermite(x_i, f_i, fp_i)
n = length(x_i)-1;
z = zeros(n+1, n+1);
% z(:,1) = x_i(:);
H = zeros(n+1, n+1);
% H(:,1) = f_i(:);
for i=0:n
    z(2*i) = x_i(i);
    z(2*i+1) = x_i(i);
    H(2*i,0) = f_i(i);
    H(2*i+1,0) = f_i(i);
    H(2*i+1,0) = fp_i(i);
    if i ~= 0
        H(2*i+1, 1) = (H(2*i,0) - H(2*i-1,0))/(z(2*i)-z(2*i-1))
    end 
end


