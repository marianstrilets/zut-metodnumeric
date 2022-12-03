
%Wyznaczyc wartosc bezwzfledna liczby rzeczywistej bez uzyciz funkcji abs()
%- skrypt

number = input('Podaj liczbe: ');

tmp = abs_number(number);
[result] = num2str(tmp);

disp(['Liczba bezwzgledna: ', result]);