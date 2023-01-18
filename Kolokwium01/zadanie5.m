%zadanie 5
%odpowiedzi: 3;

%Funkcja y=f(x) okreśona jest w 4 punktach (węzlach)
%x = [-2 1 3 7]
%y = [0 2 3 11]
%podać przybliżonę wartośći funkcji dla x=5 stosując interpolacje
%   a)liniowa
%   b)spline
%   c)wielomianu

x = [-2 1 3 7];
y = [0 2 3 11];

%x = [-2 0 2 4];
%y = [1 0 -1 -4];
%f(5) stosujac interolacje liniowa


%interp1(x, y, 5, 'linear') = 7
a_linear = interp1(x, y, 5, 'linear');
%a_linear = interp1(x, y, 3, 'linear');

disp('a)liniowa: ');
disp(a_linear);

%interp1(x, y, 5, 'spline') = 5.4963
%b_spline = interp1(x, y, 3, 'spline');
b_spline = interp1(x, y, 5, 'spline');

disp('b)spline: ');
disp(b_spline);

A = polyfit(x,y,3) %odpowiedz: 5.4963
% 3 bo welomian 3 stopnia(4 wezely)
%polyval(A, 3)
polyval(A, 5)


%dla welomianu 1 stopnia
A = polyfit(x,y,1)%w(x) = 1.2164x + 1.2632



