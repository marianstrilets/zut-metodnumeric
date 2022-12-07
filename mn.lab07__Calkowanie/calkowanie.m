%______Metody numeryczne LAB5____________________________
%______________Calkowanie numeryczne_________________

clc;
clear all;
close all;

y = 'x.^cos(x)';
f = inline(y);

%przedzia calki a, b
a = 0;
b = 10;

%n - ilość bloków
n = 200;
%h - krok calkowamie
h = (b-a) / n; 
%Rozkład do całkowania z krokiem h
x = a : h : b;

% _________________Całkowanie metodą prostokątów_____________
J1 = h * (sum(f(x)) - f(b) );

disp("Całkowanie metodą prostokątów: ")
disp(J1);

% __________________Całkowanie metodą trapezów_______________
J2 = h * (sum(f(x)) - f(b) / (2 - f(a)) );

disp("Całkowanie metodą trapezów: ")
disp(J2);

% __________________Całkowanie metodą Simpsona_______________
even = a+h : 2*h : b-h;
own = a+2*h : 2*h : b-2*h;

J3 = (h/3 * (f(a) + 4*sum(f(even)) + 2*sum(f(own)) + f(b)) );

disp("Całkowanie metodą simpsona: ")
disp(J3);

% __________________Całkowanie metodą Simpsona_______________
J4 = quad(y, a, b);

disp("Całkowanie metodą wbudowaną 'quar': ")
disp(J4);


% __________________Całkowanie metodą Monte Carlo_______________
%wykres funkcji
plot(x, f(x));

maximum = max(f(x));

grid on;
hold on;

line([ a b ], [maximum maximum]);

%liczba punktow
num = 3000;

X = a + (b-a) * rand(1, num);
Y = maximum *rand(1, num);

k = 0;

for i=1: num
    if f(X(i))>Y(i)
        k = k+1;
        plot(X(i), Y(i), 'o', color='green');
    else
        plot(X(i), Y(i), '.', color='red');
    end
end
title("Całka Monte Carlo")

J5 = (b-a) * maximum * k/num;
disp("calka monte carlo: ");
disp(J5)

hold off;
grid off;





