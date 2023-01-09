%Dla funkcji y=sqrt(2x) oblicz pierwszą i druga pochodna w punkcie x = 2.
%Dla pierwszej pochodnej zastosuj trzy wzory numeryczne. Przyjmi krok h=0.1

% Określenie funkcji y = sqrt(2x)
y = @(x) sqrt(2*x);

% Określenie punktu x = 2
x = 2;

% Określenie kroku h = 0.1
h = 0.1;

% Obliczenie pierwszej pochodnej za pomocą wzoru numerycznego złożonego
der1_compound = (y(x+h) - y(x-h))/(2*h);

% Obliczenie pierwszej pochodnej za pomocą wzoru numerycznego prostego
der1_simple = (y(x+h) - y(x))/h;

% Obliczenie pierwszej pochodnej za pomocą wzoru numerycznego pochodnej drugiego rzędu
der1_second_order = (y(x+h) - 2*y(x) + y(x-h))/(h^2);

% Wyświetlenie wyników
disp(['Pierwsza pochodna złożona: ', num2str(der1_compound)]);
disp(['Pierwsza pochodna prosta: ', num2str(der1_simple)]);
disp(['Pierwsza pochodna drugiego rzędu: ', num2str(der1_second_order)]);


% Obliczenie drugiej pochodnej za pomocą wzoru numerycznego pochodnej drugiego rzędu
der2 = (y(x+h) - 2*y(x) + y(x-h))/(h^2);

% Wyświetlenie wyniku
disp(['Druga pochodna: ', num2str(der2)]);