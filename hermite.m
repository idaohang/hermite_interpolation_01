%% Hermite Interpolation
% Numerical Analysis (Math 328) at the City College of New York, CUNY
% Exercise Set 3.4 - 1(a)
% Date: Oct/10/2015
% Author: Minwoo Bae

function H = hermite (x, y, yp)
n = length(x)-1;
z = zeros(1, 2*n);
H = zeros(2*n, 2*n);

z(2*n,:) = x(:);
z(2*n+1,:) = x(:);
H(2*n,:) = y(:);
H(2*n+1,:) = y(:);
H(2*n+1,:,1) = yp(:);
if n ~= 0
    H(2*n,:,1) = (H(2*n,:) - H(2*n-1,:))/z(2*n,:)-z(2*n-1,:);
end;


% n = length (x);
% z = zeros (1, 2*n);
% f = zeros (1, 2*n);
% 
% z(1:2:2*n-1) = x;
% z(2:2:2*n)   = x;
% f(1)         = y(1);
% f(3:2:2*n-1) = ( y(2:n) - y(1:n-1) ) ./ ( x(2:n) - x(1:n-1) );
% f(2:2:2*n)   = yp;
% 
% for i = 3:2*n
%     f(i:2*n) = ( f(i:2*n) - f(i-1:2*n-1) ) ./ ( z(i:2*n) - z(1:2*n-i+1) );
% end;
% 
% hp = zeros ( 1, 2*n );
% p = [1];
% for i = 1:2*n
%     hp = hp + f(i) * [ zeros(1,2*n-i) p ];
% 	p = conv ( p, [ 1 -z(i) ] );
% end;
