%______Metody numeryczne LAB5_______________
%______________Aproksymacja_________________

clc;
clear all;
close all;


%x = [1;2;4;7];
%y = [1.6;2.0;2.5;3.5];
x = [1;20;43;76;83;124;259];
y = [1.6;2.0;2.5;3.5;4;7;20];

%c = input('Podaj ilość węzłow: ');
%for i=1: c
%    x(i,1) = input('    punkt x: ');
%    y(i,1) = input('    punkt y: ');
%end




p = input('Wprowadz stopień welomianu p<=n: ');

%-----------------------------------Psi------------------------------
lengthX = length(x);
Psi = zeros(p+1, p+1);

power = 0;

for i=1 : lengthX
    for j=1:p+1
        for k=1 :p+1
            Psi(j,k) = Psi(j,k) + x(i)^(power+k-1);
        end
        power = power+1;
    end
    power = 0;
end

%-----------------------------------F------------------------------
F = zeros(p+1, 1);
for i=1:lengthX
    F(1,1) = F(1,1)+y(i);
    for j=2:p+1
        F(j,1) = F(j,1) + ( (x(i)^(j-1)).*y(i));
    end     
end

A = inv(Psi) * F

xi = min(x):0.1:max(x);
w=0;
for i=1: p+1
    w = w+A(i).*xi.^(i-1);
end

grid on;
hold on;

plot(x,y,'bo');
plot(xi,w);


hold off;
grid off;
