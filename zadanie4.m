%zadanie 4
%odpowiedzi: 3;

%Funkcja F(x) jest stabelaryzowane:
%x = [ 0 1 2 3 4  5  6 ];
%y = [-1 0 1 7 11 17 13];
%   a)wyznacyć F'(3) z 3 dokładnościami 
%   b)wyznaćyc F''(3)
%   c)Oblicz calke od 0 do 6 f(x)dx stosując metode trójkątów i metode Simpsona

x = [ 0 1 2 3 4  5  6 ];
y = [-1 0 1 7 11 17 13];

disp('---------------------------------------------------------------------');
%===========    a)wyznacyć F'(3) z 3 dokładnościami     =========
%F'(x) 3 rozne dokladnosci
h = 1;

Fd2 = (11-7) / 1
Fd3 = (11-1) / 2
Fd5 =  (0 - (8 * 1) + (8 * 11) - 17 )/ 12


disp('---------------------------------------------------------------------');
%========================   b)wyznaćyc F''(3)   ======================
drugapochodna = (17 - (2*11) + 7) / (1^2) %= 0.75


disp('---------------------------------------------------------------------');
%c)Oblicz calke od 0 do 6 f(x)dx stosując netode trójkątów i metode Simpsona
Jprostokat = ( -1 + 0 + 1 + 7 + 11 + 17 ) * 1            %= 35
Jtrapeza = ( -(1/2) + 0 + 1 + 7 + 11 + 17 + (13/2) ) * 1 %= 42
Jsimpsona = (1/3)*(-1 + 4 * (0+7+17) + 2 * (1+11) + 13)  %= 44








