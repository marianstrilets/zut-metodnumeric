%zadanie 2
%rozniczkowanie numeryczne pochodne
%odpowiedzi: 3;

%MATLAB Dla funkcji y=sqrt(2x) oblicz pierwszą i druga pochodna w punkcie x = 2.
%Dla pierwszej pochodnej zastosuj trzy wzory numeryczne. Przyjmi krok h=0.1

% Określenie kroku h = 0.1
h = 0.1;

% Określenie funkcji y = sqrt(2*x)
%f = inline('sqrt(2*x)');
f = inline('x*sin(x)');


% Określenie punktu x = 2
x = 2;

% Obliczenie pierwszej pochodnej za pomocą wzoru numerycznego prostego
fd2 = (f(x+h) - f(x))/h;

% Obliczenie pierwszej pochodnej za pomocą wzoru numerycznego złożonego
fd3 = (f(x+h) - f(x-h)) / (2 * h);

fdd = (f(x+2*h) - 2*f(x+h) + f(x) ) / (h^2);

disp(fd2)
disp(fd3)
disp(fdd)