%________________________Metody Optymalizacji______________________________
%______________Ekstremum funkcji jednej zmiennej (minimum) ________________
%________________________Metoda złotego podziału___________________________


clc
clear

% definicja funkcji
f = @(x) x.^3 + x.^2 - 20.*x;

% zakres poszukiwań minimum
a = 0;
b = 6;

xi = a:.1:b;
length_x = length(xi);
epsilon = 0.01;

% parametry metody złotego podziału
counter = 0;

% W metodzie złotego podziału wartość współczynnika 
% k jest dobrana w taki sposób, aby przy kolejnych iteracjach wykorzystywać obliczoną
% w poprzednim kroku wartość funkcji jednej z dwóch próbek f(xL) lub f(xR). 
% Aby osiągnąć powyższą własność, wartość współczynnika k musi być równa wartości złotego podziału:
k = (sqrt(5) - 1) / 2;

%lewa i prawa próbka
xleft  = b - k * (b-a);
xright = a + k * (b-a);


% iteracje metody złotego podziału
while(b-a>=epsilon) %porównaj wartości funkcji celu lewej i prawej próbki
    counter = counter+1;
    if(f(xleft) < f(xright)) 
        b=xright;
        xright = xleft;
        xleft = b-k*(b-a);
    else
        a = xleft;
        xleft = xright;
        xright = a+k*(b-a);
    end
end

% wynik - minimum funkcji
min_value = (a + b) / 2;
disp('Minimum funkcji metodą zlotego podziału wynosi:');
disp(min_value);
disp(counter);



