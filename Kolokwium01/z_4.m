%zadanie 4
%odpowiedzi: 3;

%Funkcja F(x) jest stabelaryzowane:
%x = [ 0 1 2 3 4  5  6 ];
%y = [-1 0 1 7 11 17 13];
%   a)wyznacyć F'(3) z 3 dokładnościami 
%   b)wyznaćyc F''(3)
%   c)Oblicz calke od 0 do 6 f(x)dx 
%       stosując metode trójkątów i metode Simpsona

x = [ 0 1 2 3 4  5  6 ];
y = [-1 0 1 7 11 17 13];

disp('---------------------------------------------------------------------');
%===========    a)wyznacyć F'(3) z 3 dokładnościami     =========
%F'(x) 3 rozne dokladnosci
h = 1;

%Fd2 = 11-7 / 1   = 4
%F'k = (Fk+1 - Fk) / h
%F'(3) = (F(4) - F(3)) / 1 = (11 - 7) / 1 = 4
Fd2 = (11-7) / 1;
disp('Fd2: (wzór 2-punktowy)')
disp(Fd2);

%Fd3 = 11-1 / 2   = 5 
%F'k = (Fk+1 - Fk-1) / 2h
%F'(3) = (F(4) - F(2)) / 2*1 = (11 - 1) / 2 = 10 / 2 = 5
Fd3 = (11-1) / 2;
disp('Fd3: (wzór 3-punktowy):')
disp(Fd3);


%Fd5 =  0 - (8 * 1) + (8 * 11) - 17 / 12  = 63 / 12 = 5.25
%F'k   = 1*(Fk-2   - 8*Fk-1 + 8*Fk+1 - Fk+2 )  / 12h
%F'(3) = 1*(F(1)   - 8*F(2) + 8*F(4) - F(5) )  / 12*1 
%       =1*(0      - 8*1    + 8*11   - 17)     / 12*1
%       =(0-8 + 88 - 17) / 12 = 63 / 12 = 5.25
Fd5 =  (0 - (8 * 1) + (8 * 11) - 17 )/ 12;
disp('Fd5: (wzór 5-punktowy)')
disp(Fd5);

disp('---------------------------------------------------------------------');
%========================   b)wyznaćyc F''(3)   ======================
% (17 - (2*11) + 7) / (1^2) = 0.75
%F"(3) =(Fk+2 - 2*Fk+1 + Fk) / h^2
%F"(3) =(17   - 2*11   + 7 ) / 1
drugapochodna = (17 - (2*11) + 7) / (1^2); %= 0.75
disp('drugapochodna:')
disp(drugapochodna);

disp('---------------------------------------------------------------------');
%Calka
%Jprostokat = ( -1 + 0 + 1 + 7 + 11 + 17 ) * 1 = 35
%Jtrapeza = ( -(1/2) + 0 + 1 + 7 + 11 + 17 + (13/2) ) * 1 = 42
%Jsimpsona = (1/3)*(-1 + 4 * (0+7+17) + 2 * (1+11) + 13) = 44

%c)Oblicz calke od 0 do 6 f(x)dx stosując netode trójkątów i metode Simpsona
%x = [ 0 1 2 3 4  5  6 ];
%y = [-1 0 1 7 11 17 13];

%=============  prostokat   ======================
% h         = 1
% y         =     [ -1   0   1   7   11   17  13];
%Jprostokat = 1 * ( -1 + 0 + 1 + 7 + 11 + 17 )    = 35
Jprostokat  = ( -1 + 0 + 1 + 7 + 11 + 17 ) * 1; 
disp('Metoda prostokat:');
disp(Jprostokat);

%============   trapeza     =====================
%pierwszwy i ostatni dziele przez 2
% h       = 1                  
% y       =     [     -1    0   1   7   11   17     13    ];
%Jtrapeza = 1 * ( -(1/2)  + 0 + 1 + 7 + 11 + 17 +  (13/2) )  = 42
Jtrapeza  = 1 * ( -(1/2)  + 0 + 1 + 7 + 11 + 17 +  (13/2) );
disp('Metoda trapeza:');
disp(Jtrapeza);

%============   Simpsona     =====================
% 4*parzyste(0+7+17) 2*nieparzyste(1+11)
% h         = 1
% y         =      [ -1  0   1   7   11   17          13];
%Jsimpsona = (1/3)*( -1 + 4*(0+7+17) + 2*(1+11) + 13) = 44
Jsimpsona  = (1/3)*( -1 + 4*(0+7+17) + 2*(1+11) + 13); 
disp('Metoda Simpsona:');
disp(Jsimpsona);







