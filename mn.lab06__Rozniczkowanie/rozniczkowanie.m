%______Metody numeryczne LAB5____________________________
%______________Rozniczkowanie numeryczne_________________

clc;
clear all;
close all;

y = 'x.^cos(x)';
f = inline(y);
x = 0:0.1:10;


grid on;
hold on;

%funkcja
plot(x,f(x));

 %pochodna analityczna
plot(x, ((cos(x)./x - sin(x).*log(x)).*x.^cos(x)), color='y');
h = 0.1;

%wzór 2-punktowy
plot(x, (f(x+h) - f(x)) ./ h,'--', color='r');

%wzór 3-punktowy
plot(x, ((f(x+h) - f(x-h)) ./ (2*h)), '--', color='b');

%wzór 5-punktowy
plot(x, ((f(x-2 * h) - 8 * f(x - h) + 8*f(x+h) - f(x+2*h)) ./ (12*h)), '--', color='g');

x = 0:h:10;
dy = diff(f(x))./diff(x);

%funkcja wbudowana
plot(x, [dy 0], color='k');
legend('funkcja', 'pochodna analityczna', '2-punktowy', '3-punktowy', '5-punktowy', 'diff');
xlabel('X');
ylabel('Y');
title('Wykres funkcje i pochodnej funkcje');

hold off;
grid off;
