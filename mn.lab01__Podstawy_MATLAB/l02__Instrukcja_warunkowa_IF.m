

%instrukcja warunkowa if ... end
a = input("Wprowadz wartosc dla zmiennnej a: ");
b = input("Wprowadz wartosc dla zmiennnej b: ");
if (a < 5 && b ~= 10) || (a == 0 && b == 0)
    a = 5;
    b = b + 5;
elseif(a == 100 && b == 100)
    a = a + 1000;
    b = b + 1000;
else
    a = a - 10;
    b = b - 10;
end
disp(['Zmienna a: ', num2str(a)]);
disp(['Zmienna b: ', num2str(b)]);