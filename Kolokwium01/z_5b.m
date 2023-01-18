%Funkcja y=f(x) okreśona jest w 4 punktach (węzlach)
%   x = [-2 1 3 7]
%   y = [0 2 3 11]
%   podać przybliżonę wartośći funkcji dla x=5 stosując interpolacje
%       b)spline


x = [-2 1 3 7];
y = [0 2 3 11];

%Tworzymy funkcję interpolującą
interp_spline = spline(x, y);

%Obliczamy przybliżoną wartość funkcji dla x=5
x_interp = 5;
y_interp = ppval(interp_spline, x_interp);

%Wyświetlamy wynik
disp(y_interp);