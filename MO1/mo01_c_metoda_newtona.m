%________________________Metody Optymalizacji______________________________
%______________Ekstremum funkcji jednej zmiennej (minimum) ________________
%___________________________Metoda newtona_________________________________


clc
clear

% definicja funkcji
f = @(x) x.^3 + x.^2 - 20.*x;

% zakres poszukiwań minimum
a = 0;
b = 6;

% parametry metody newtona
epsilon = 0.01;
counter = 0;
h = 0.01;
xk = a;

y_pochodna = (1/(12*h)) * (f(xk-2*h) - 8*f(xk-h) + 8*f(xk+h) - f(xk+2*h));
syms x
f_pochodna = inline(diff(x.^3 + x.^2 - 20.*x));
y_pochodna2 = (1/(12*h)) * (f_pochodna(xk-2*h) - 8*f_pochodna(xk-h) + 8*f_pochodna(xk+h) - f_pochodna(xk+2*h));

while abs((xk - y_pochodna / y_pochodna2) - xk) >= epsilon
    counter = counter + 1;
    y_pochodna = (1/(12*h)) * (f(xk-2*h) - 8*f(xk-h) + 8*f(xk+h) - f(xk+2*h));
    y_pochodna2 = (1/(12*h)) * (f_pochodna(xk-2*h) - 8*f_pochodna(xk-h) + 8*f_pochodna(xk+h) - f_pochodna(xk+2*h));
    xk = (xk-y_pochodna/y_pochodna2);
end
disp('Pierwiastek z metody Newtona: ')
disp(xk);
disp(counter);

















