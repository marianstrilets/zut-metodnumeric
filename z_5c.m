%Funkcja y=f(x) okreśona jest w 4 punktach (węzlach)
%   x = [-2 1 3 7]
%   y = [0 2 3 11]
%   podać przybliżonę wartośći funkcji dla x=5 stosując interpolacje
%       c)wielomianowe
x = [-2 1 3 7];
y = [0 2 3 11];

%Tworzymy funkcję interpolującą
% 3 bo welomian 3 stopnia(4 wezely)
p = polyfit(x, y, 3);

%Obliczamy przybliżoną wartość funkcji dla x=5
x_interp = 5;
y_interp = polyval(p, x_interp);

%Wyświetlamy wynik
disp(y_interp);