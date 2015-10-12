%% Hermite Interpolation
% Numerical Analysis (Math 328) at the City College of New York, CUNY
% Exercise Set 3.4 - 1(a)
% Date: Oct/10/2015
% Author: Minwoo Bae

function H = hermite (x, y, yp)
n = length(x)-1;
z = zeros(1, 2*(n+1));
H = zeros(2*(n+1), 2*(n+1));

for i=1:(n+1)
    z(2*i+1) = x(i);
    z(2*i+2) = x(i);
    H(2*i+1,1) = y(i);
    H(2*i+2,1) = y(i);
    H(2*i+2,2) = yp(i);
    if i ~= 1
        H(2*i+1,2) = (H(2*i+1,1) - H(2*i,1))/(z(2*i+1)-z(2*i));
    end;
end;

for i=3:2*n+2
    for j=3:i
        disp('hello')
        %fprintf('%d',H(i+1,j));
        H(i,j)=(H(i+1,j)-H(i,j))/(z(i)-z(i-j+1));
    end;
end;
