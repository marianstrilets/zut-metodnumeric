%________________________Metody Numeryczne______________________________
%_______________________Rownanie nieliniowe____________________________________

clc
clear

a=-2;
b=2;
h=0.01;
x=a:h:b;
f=inline('exp(x)+x.^2-2');
y=f(x);
epsilon=10^(-3);

% wykres
plot(x,y)

grid on
hold on

sqrt_1=fzero(f,-2);
sqrt_2=fzero(f,2);
plot(sqrt_1,0,'or');

hold on
plot(sqrt_2,0,'or');

% -----------------     metoda polowienia  --------------------------------
disp('-----------------     metoda polowienia  -------------------------');

BI_a=a;
BI_b=b;
BI_i=0;
BI_x=(BI_a+BI_b)/2;
while abs(BI_b-BI_a)>epsilon
    if (f(BI_a)*f(BI_x))<0
        BI_b=BI_x;
    else
        BI_a=BI_x;
    end
    BI_x=(BI_a+BI_b)/2;
    BI_i=BI_i+1;
end

metoda_polowenia = BI_x;
iter=BI_i;

disp('Metoda polowienia:');
disp(metoda_polowenia);
disp('iteracje:');
disp(iter);


% -----------------     regula falsi  --------------------------------
disp('-----------------     regula falsi  -------------------------');
FA_x=0;
FA_x1=((a*f(b))-(b*f(a)))/(f(b)-f(a));
FA_i=1;
while abs(FA_x1-FA_x)>epsilon
    FA_x=FA_x1;
    if (f(a)*f(FA_x))<0
        FA_x1=((FA_x*f(a))-(a*f(FA_x)))/(f(a)-f(FA_x));
    elseif (f(b)*f(FA_x))<0
        FA_x1=((FA_x*f(b))-(b*f(FA_x)))/(f(b)-f(FA_x));
    end
    FA_i=FA_i+1;
end
regula_falsi=FA_x1;
iter=FA_i;

disp('Regula Falsi:');
disp(regula_falsi);
disp('iteracje:');
disp(iter);

% -----------------     metoda newtona  --------------------------------
disp('-----------------     Metoda Newtona  -------------------------');
NE_x=a;
NE_x1=(1/(12*h))*(f(NE_x-(2*h))-(8*f(NE_x-h))+(8*f(NE_x+h))-f(NE_x+(2*h)));;
NE_i=1;
while abs(NE_x1-NE_x)>epsilon
    NE_x=NE_x1;
    NE_x_p=(1/(12*h))*(f(NE_x-(2*h))-(8*f(NE_x-h))+(8*f(NE_x+h))-f(NE_x+(2*h)));
    NE_x1=NE_x-(f(NE_x)/NE_x_p);
    NE_i=NE_i+1;
end
metoda_newtona=NE_x1;
iter=NE_i;

disp('Metoda Newtona:');
disp(regula_falsi);
disp('iteracje:');
disp(iter);


% -----------------     metoda wbudowana  --------------------------------
disp('-----------------     Metoda wbudowana  -------------------------');
metoda_wbudowana=fzero(f,a);
disp(metoda_wbudowana);


