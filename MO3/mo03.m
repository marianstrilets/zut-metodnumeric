%________________________Metody Optymalizacji______________________________
%______________________________Gradient____________________________________


clc
clear

x0 = -5:0.1:5;
y0 = -5:0.1:5;

% definicja funkcji
f = inline('(2.* x.^2) + (y.^2) + (x.*y) - (6.*x) - (5.*y) + 8');

%dokładność
epsilon = 0.1;
alfa = 0.2;

fy = @(y) f(-5, y);
fx = @(x) f(x, -5);

dx = ( fx(x0 + alfa) - fx(x0-alfa) ) / (2 * alfa);
dy = ( fy(x0 + alfa) - fy(x0-alfa) ) / (2 * alfa);

[x_grid, y_grid] = meshgrid(x0, y0);
mesh_grid = f(x_grid, y_grid);


grid on;
hold on;

i = 1; 
grab = [dx(i), dy(i)] / norm([dx(i), dy(i)]);
xk = [x0(i), y0(i)] - (grab / norm(grab)) * alfa;
plot(xk(1), xk(2), '.', Color='c', MarkerSize=14)
i = i+1;

while(grab < epsilon)
    grab = [dx(i), dy(i)] / norm([dx(i), dy(i)]);
    xk = [x0(i), y0(i)] - (grab / norm(grab)) * alfa;    
    plot(xk(1), xk(2), '.', Color='c', MarkerSize=14)
    i = i+1;
end

contour(x0, y0, mesh_grid, 50);










