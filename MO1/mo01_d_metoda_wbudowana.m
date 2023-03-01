%________________________Metody Optymalizacji______________________________
%______________Ekstremum funkcji jednej zmiennej (minimum) ________________
%___________________________Metoda wbudowana_______________________________


clc
clear

% definicja funkcji
f = @(x) x.^3 + x.^2 - 20.*x;

% zakres poszukiwań minimum
a = 0;
b = 6;

% wynik - minimum funkcji
min_value = fminbnd(f, a, b);
disp('Minimum funkcji metodą wbudowaną wynosi:');
disp(min_value);
