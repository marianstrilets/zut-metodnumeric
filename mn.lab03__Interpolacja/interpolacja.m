%______Metody numeryczne LAB3_______________
%______________Interpolacja_________________

clc;
clear all;
close all;

%x = input("Podaj wektor x: ")
%y = input("Podaj wektor y: ")

%x = [-10 -5 5];
%y = [5;3;6];

x = [5 -1 3 6];
y = [1;3;7;3];

lengthX = length(x);
vX = zeros(lengthX, lengthX);

for i=1:length(x)
    for j = 0 : (lengthX - 1)
        vX(i, j+1) = (x(i)) ^j;
    end
end


lengthY = length(y);
vY = zeros(lengthY, 1);

for j=1 : lengthY
    vY(j,1) = y(j);
end

xo = min(x):.1:max(x);

A = vX \ vY;
disp("wspolczyniki welomianu: ")
disp(A);

for j=1 : length(xo)
    w(j) = 0;
    for i = 0 : (length(x) - 1)
        index = i + 1;
        w(j) = w(j) + (A(index) * xo(j).^i);
    end
end

grid on;
hold on;

plot(x, y, 'or', xo, w,'b');


grid off;
hold off;
