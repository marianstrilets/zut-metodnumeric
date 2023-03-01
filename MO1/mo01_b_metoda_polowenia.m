%________________________Metody Optymalizacji______________________________
%______________Ekstremum funkcji jednej zmiennej (minimum) ________________
%__________________Metoda połowenia (bisekcji, dwudzielną)_________________


clc
clear

% definicja funkcji
f = @(x) x.^3 + x.^2 - 20.*x;

% zakres poszukiwań minimum
a = 0;
b = 6;

% parametry metody połowenia
middle = 0;
epsilon = 0.01;
counter = 0;

% iteracje metody połowenia
while(b-a>=epsilon)
    counter = counter+1;
    middle = (a + b)/2;
    xleft  = (a + middle) / 2;
    xright = (b + middle) / 2;

    if(f(xleft) < f(middle))
        b=middle;
    else
        if(f(middle) < f(xright))
            a = xleft;
            b = xright;
        else
            a = middle;
        end
    end
end

% wynik - minimum funkcji
min_value = (a + b) / 2;
disp('Minimum funkcji metodą połowenia wynosi:');
disp(min_value);
disp(counter);






