%________________________Metody Optymalizacji______________________________
%________________________Metoda Gaussa-Seidlea__________________________


clc
clear

% definicja funkcji
f = inline('(2.* x.^2) + (y.^2) + (x.*y) - (6.*x) - (5.*y) + 8');

%dokładność
epsilon = 0.001;

%punkt startowy
x0 = [-4,-4];

syms y
syms x

z = f(x0(1), y);
z1 = diff(z);
yk = solve(z1);

z = f(x, yk);
z1 = diff(z);
xk = solve(z1);

xi = (-5:0.01:5);
yi = (-5:0.01:5);

[x_grid, y_grid] = meshgrid(xi, yi);
mesh_grid = f(x_grid, y_grid);
counter = 0;

grid on;
hold on;

plot(x0(1), x0(2), '.', Color='c', MarkerSize=14)
%warunek zatrzymanie algorytmu
while((sqrt( (xk - x0(1))^2 ) + (yk - x0(2)^2)) > epsilon)
    counter = counter +1;

    line([x0(1) x0(1)], [x0(2) yk])
    plot(x0(1), yk, '.', Color='c', MarkerSize=14)
    plot(xk, yk, '.', Color='c', MarkerSize=14)
    line([x0(1) xk], [yk yk]);

    x0(1)= xk;
    x0(2)= yk;

    z = f(xk, y);
    z1 = diff(z);
    yk = solve(z1);

    z = f(x, yk);
    z1 = diff(z);
    xk = solve(z1);
end
line([x0(1) x0(1)], [x0(2) yk])
line([x0(1) xk], [yk yk])

disp('Ilość iteracij: ');
disp(counter);

x_min = double(xk);
y_min = double(yk);

disp('x_min:');
disp(x_min);
disp('y_min:');
disp(y_min);


plot(xk, yk, '.', Color='c', MarkerSize=14)
contour(xi, yi, mesh_grid, 50);

%Osie x i y
x_zero = zeros(1, length(xi));
y_zero = zeros(1, length(xi));

plot(x_zero, yi, '--', Color='red', MarkerSize=14)
plot(xi, y_zero, '--', Color='red', MarkerSize=14)

%Funkcja wbudowana:
x0 = [-4, 4];
disp('Funkcja wbudowana: ');

f = inline('(2* x(1)^2) + (x(2)^2) + (x(1)*x(2)) - (6*x(1)) - (5*x(2)) + 8');

fminsearch(f, x0)








