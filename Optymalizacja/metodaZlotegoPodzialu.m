
function result = metodaZlotegoPodzialu(a, b, epsilon, f)

%-------------------------------------Metode złotego przedziału-------------
%współczynnik złotego podziału
%W metodzie złotego podziału wartość współczynnika 
% k jest dobrana w taki sposób, aby przy kolejnych iteracjach wykorzystywać obliczoną 
% w poprzednim kroku wartość funkcji jednej z dwóch próbek f(xL) lub f(xR). 
% Aby osiągnąć powyższą własność, wartość współczynnika k musi być równa wartości złotego podziału:
k = ( sqrt( 5 ) - 1 ) / 2;
%lewa i prawa próbka
xL = b - k * ( b - a );
xR = a + k * ( b - a );

%pętla póki nie zostanie spełniony warunek stopu
while ( ( b - a ) > epsilon) %porównaj wartości funkcji celu lewej i prawej próbki
    if (f(xL) < f(xR)) %wybierz przedział [a, xR]
        b = xR;
        xR = xL;
        xL = b - k * ( b - a );
    else %wybierz przedział [xL, b]
    a = xL;
    xL = xR;
    xR = a + k * ( b - a );
    end
end

%zwróć wartość środkową przedziału
 
result = ( a + b ) / 2; 
disp('Współczynik złotego podziału: ')
disp(result)
