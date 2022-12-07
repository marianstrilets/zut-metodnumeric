%______Metody numeryczne LAB8________________________
%______________ Rownania nieliniowe _________________
%Rownania nieliniowe

%Skrypt do liczenia jednego pierwiastka funkcji
%a=poczatek przedzialu, w ktorym szukamy pierwiastka
%b=koniec przedzialu, w ktorym szukamy pierwiastka
%xi=przedzial, w jakim wykres na zostac narysowany




f=inline('(x.^3) + (x.^2) - 100');

xi=0:0.005:1;
xo=zeros(1,length(xi)); %do wykresu osi x
y=f(xi);
grid on
hold on
plot(xi,y)
plot(xi,xo,'--')

a=input('Podaj a: ')
b=input('Podaj b: ')
clone_a=a;
clone_b=b;

dokladnosc=0.005;

%============================
%Met. bisekcji
licznik=0;
x0=(a+b)/2;
while abs(f(x0)) > dokladnosc
    licznik=licznik+1;
    if f(a)*f(x0)<0
        b=x0;
    else
        a=x0;
    end
    x0=(a+b)/2;
end
disp('===================A============================');
disp('pierwiastek z met. bisekcji: '); x0
disp('ilosc iteracji: '); licznik
a=clone_a;
b=clone_b;
licznik=0;
%============================
%Met. Falsi
x0=(a*f(a)-b*f(b))/(f(b)-f(a));
while abs(f(x0)) > dokladnosc
    licznik=licznik+1;
    if f(a)*f(x0)<0
        x0=(x0*f(a)-a*f(x0))/(f(a)-f(x0));
    else
        x0=(x0*f(b)-b*f(x0))/(f(b)-f(x0));
    end
end
disp('pierwiastek z reguły falsi: '); x0
disp('ilosc iteracji: '); licznik
licznik=0;
%plot(x0,0,'.k','MarkerSize',10)
%============================
%Met. Newtona
disp('===============================================');
x0=a;
h=0.01;
%f2 = inline(diff(exp(x)+(x^2)-2));
%f2(0)

%y_pochodna=(f(xi+h)-f(xi-h))/(2*h);
%i = 1;
while abs(f(x0)) > dokladnosc
    licznik=licznik+1;
    f2=(f(x0+h)-f(x0-h))/(2*h);
    x0=x0-f(x0)/f2;

    %x0=x0-f(x0)/y_pochodna(i);
    %i=i+1;
    
    %x0=x0-f(x0)/f2(x0);
end
disp('pierwiastek z met. Newtona: '); x0
disp('ilosc iteracji: '); licznik
%============================
disp('===============================================');
disp('pierwiastek z funkcji fzero: '); fzero(f,a)
