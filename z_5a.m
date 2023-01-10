%Funkcja y=f(x) okreśona jest w 4 punktach (węzlach)
%   x = [-2 1 3 7]
%   y = [0 2 3 11]
%   podać przybliżonę wartośći funkcji dla x=5 stosując interpolacje
%       a)liniowa

x = [-2 1 3 7];
y = [0 2 3 11];

%Obliczamy współczynnik nachylenia i wyraz wolny dla prostej łączącej punkty (3,3) i (7,11)
a = (y(4)-y(3))/(x(4)-x(3));
b = y(3) - a*x(3);

%Obliczamy przybliżoną wartość funkcji dla x=5
x_interp = 5;
y_interp = a*x_interp + b;

%Wyświetlamy wynik
disp(y_interp);