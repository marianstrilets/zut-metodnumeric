%______Metody numeryczne LAB6____________________________
%______________Rozniczkowanie numeryczne_________________

clc;
clear all;
close all;

y = 'x.^cos(x)';
f = inline(y);
%przedzial od 0 do 10
h = 2;
x = 0:h:10;


grid on;
hold on;

%funkcja
plot(x,f(x));

 %pochodna analityczna
y1 = ((cos(x)./x - sin(x).*log(x)).*x.^cos(x));
plot(x, ((cos(x)./x - sin(x).*log(x)).*x.^cos(x)), color='y');


%wzór 2-punktowy
y2 = (f(x+h) - f(x)) ./ h;
plot(x, (f(x+h) - f(x)) ./ h,'--', color='r');

%wzór 3-punktowy
y3=((f(x+h) - f(x-h)) ./ (2*h));
plot(x, ((f(x+h) - f(x-h)) ./ (2*h)), '--', color='b');

%wzór 5-punktowy
y5 = ((f(x-2 * h) - 8 * f(x - h) + 8*f(x+h) - f(x+2*h)) ./ (12*h));
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

disp("Funkcja: ")
disp(f)
disp("===========================================================")
disp("x = ")
disp(x)
disp("===========================================================")
disp("Pochodna analityczna: ")
disp(y1)
disp("===========================================================")
disp("2-punktowy")
disp(y2)
disp("===========================================================")
disp("3-punktowy")
disp(y3)
disp("===========================================================")
disp("5-punktowy")
disp(y5)
disp("===========================================================")
disp("dy = diff")
disp(dy)
disp("===========================================================")

