%______Metody numeryczne LAB____________________________
%_____________Ekstremum Funkcji jednej zmiennej_________________

clc;
clear all;
close all;

y = 'x^3+x^2-20*x';
f = inline(y);

%przedzia a, b
a = 0;
b = 6;
epsilon = 0.01;


result1 = metodaZlotegoPodzialu(a, b, epsilon, f);
disp('Współczynik złotego podziału: ')
disp(result1)

disp('============================================================')


result2 = metodaZlotegoPodzialu(a, b, epsilon, f);
disp('Współczynik metody połowenia: ')
disp(result2)

disp('============================================================')
