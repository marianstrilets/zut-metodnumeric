
function [k] = NWD(k, n)
%Funkcja oblicza największej wspólnej dzielnik


while(n ~= 0)
    x = n;
    n = rem(k,n);
    k = x;

end