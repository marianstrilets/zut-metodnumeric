


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
pierwiastek1=fzero(f,-2);
pierwiastek2=fzero(f,2);
plot(pierwiastek1,0,'or');
hold on
plot(pierwiastek2,0,'or');
% a b
a=input('Podaj a: ');
b=input('Podaj b: ');
% metoda polowienia
disp('========================B=======================');

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
Metoda_Polowienia=BI_x
Metoda_Polowienia_Iteracje=BI_i
% regula falsi
disp('===============================================');
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
Regula_Falsi=FA_x1
Regula_Falsi_Iteracje=FA_i
% metoda newtona
disp('===============================================');
NE_x=a;
NE_x1=(1/(12*h))*(f(NE_x-(2*h))-(8*f(NE_x-h))+(8*f(NE_x+h))-f(NE_x+(2*h)));;
NE_i=1;
while abs(NE_x1-NE_x)>epsilon
    NE_x=NE_x1;
    NE_x_p=(1/(12*h))*(f(NE_x-(2*h))-(8*f(NE_x-h))+(8*f(NE_x+h))-f(NE_x+(2*h)));
    NE_x1=NE_x-(f(NE_x)/NE_x_p);
    NE_i=NE_i+1;
end
Metoda_Newtona=NE_x1
Metoda_Newtona_Iteracje=NE_i
% metoda wbudowana
disp('===============================================');
Metoda_Wbudowana=fzero(f,a)


