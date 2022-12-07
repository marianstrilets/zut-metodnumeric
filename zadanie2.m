%zadanie 2
%rozniczkowanie numeryczne pochodne

h = 0.1;

f = inline('sqrt(2*x)');

x0 = 2;

fd2 = (f(x+h) - f(x))/h;
fd3 = (f(x+h) - f(x-h)) / (2 * h);
fdd = (f(x+2*h) - 2*f(x+h) + f(x) ) (h^2);