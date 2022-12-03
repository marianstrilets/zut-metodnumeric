%______Metody numeryczne LAB2_______________
%____Rozwiązania układu równań liniowych____
%__________________Cramera__________________
%___________________test____________________

clc;
clear all;
close all;


disp('Macierz A:');
sizeA = [input('    rows:'),input('    columns: ')];
sizeb = [sizeA(2), 1];

A = zeros(sizeA(1), sizeA(2));
b = zeros(sizeA(2),1);

disp('Macierz A:');
for i=1:sizeA(1)
    for j=1:sizeA(2)
        A(i,j) = input('    Podaj liczbe: ');
    end 
end
disp('Macierz A:');
disp(A);

disp('Macierz b:');
for i=1:sizeb(1)        
    b(i,1) = input('    Podaj liczbe: ');        
end
disp('Macierz b:');
disp(b);

disp(' ');
disp('    Działania na macierzach');
disp('Metoda Cramera');

result = cramera(A, b);
disp(result);