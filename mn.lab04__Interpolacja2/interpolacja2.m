%______Metody numeryczne LAB4_______________
%______________Interpolacja2_________________

clc;
clear all;
close all;

%x,y wektory definiujące węzły interpolacji
x = 0:0.5:3;
y = sin(x.^2);

%xi argument lub wektor argumentów, dla któtych chcemy obliczyć wartośći
%funkcji interpolującej
xi = min(x):0.05:max(x);


grid on;
hold on;

y1 = interp1(x,y,xi,'linear');
subplot(2,2,1);
axis([0 3 -1 1.3]);
plot(xi,sin(xi.^2),'r--',x, y, 'b*', xi, y1, 'g-');
title('linear');

y2 = interp1(x,y,xi,'spline');
subplot(2,2,2);
axis([0 3 -1 1.3]);
plot(xi,sin(xi.^2),'r--',x, y, 'b*', xi, y2, 'g-');
title('spline');

y3 = interp1(x,y,xi,'cubic');
subplot(2,2,3);
axis([0 3 -1 1.3]);
plot(xi,sin(xi.^2),'r--',x, y, 'b*', xi, y3, 'g-');
title('cubic');

A = polyfit(x, y, 6);
w = polyval(A, xi);
subplot(2,2,4);
axis([0 3 -1 1.3]);
plot(xi,sin(xi.^2),'r--',x, y, 'b*', xi, w, 'g-');
title('polynomial');

hold off;
grid off;