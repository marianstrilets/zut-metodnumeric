%zadanie 5

x = [-2 1 3 7]
y = [0 2 3 11]

%f(5) stosujac interolacje liniowa


%interp1(x, y, 5, 'linear') = 7
interp1(x, y, 5, 'linear') 

%interp1(x, y, 5, 'spline') = 5.4963
interp1(x, y, 5, 'spline') 

A = polyfit(x,y,3) %odpowiedz: 5.4963
% 3 bo welomian 3 stopnia(4 wezely)
polyval(A, 5)

%dla welomianu 1 stopnia
A = polyfit(x,y,1)%w(x) = 1.2164x + 1.2632



