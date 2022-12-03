
function [an] = ciag_fibonaczego(n)
%Funkcja wyznaca n-ty wyraz ciągu fibonaczego

a0 = 0;
a1 = 1;
for i=2:n
    an = a0 + a1;
    a0 = a1;
    a1 = an; 
end