%% Hermite Interpolation
% Numerical Analysis (Math 328) at the City College of New York, CUNY
% Chapter 3.4 in Numerical Analysis
% Date: Oct/10/2015
% Author: Minwoo Bae

function H = hermite (x, y, yp)

n = length(x);
z = zeros(1, 2*n);
H = zeros(2*n, 2*n);

for i=1:n
    z(2*i) = x(i);
    z(2*i+1) = x(i);
    H(2*i,1) = y(i);
    H(2*i+1,1) = y(i);
    H(2*i+1,2) = yp(i);
    if i ~= 1
        H(2*i,2) = (H(2*i,1) - H(2*i-1,1))/(z(2*i)-z(2*i-1));
    end;
end;

for i=3:2*n
    for j=3:i
        H(i+1,j) = (H(i+1,j-1)-H(i,j-1))/(z(i+1)-z((i+2)-j));
    end;
end;

