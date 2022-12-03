%______Metody numeryczne LAB2_______________
%____Rozwiązania układu równań liniowych____
%__Metoda Eliminacji Gaussa-Jordana_________
%_______________test________________________
clc;
clear all;
close all;

disp('Macierz Ax:');
sizeAx = [input('    rows:'),input('    columns: ')];
sizeB = [sizeAx(2), 1];

Ax = zeros(sizeAx(1), sizeAx(2));
B = zeros(sizeAx(2),1);

disp('Macierz Ax:');
for i=1:sizeAx(1)
    for j=1:sizeAx(2)
        Ax(i,j) = input('    Podaj liczbe: ');
    end 
end
disp('Macierz Ax:');
disp(Ax);

disp('Macierz B:');
for i=1:sizeB(1)        
    B(i,1) = input('    Podaj liczbe: ');        
end
disp('Macierz B:');
disp(B);

disp(' ');
disp('    Działania na macierzach');
disp('Metoda Eliminacji GAUSSA-JORDANA');

result = gauss_jordan_elimination(Ax, B);
disp(result);