%______Metody numeryczne LAB2_______________
%____Rozwiązania układu równań liniowych____
%__________________Cramera__________________

function x = cramera(A, b)
    n = length(b);
    x = zeros(1, n);
    detA = det(A);
    for i=1 : n
        Ax = A;
        Ax(:,i) = b;
        detAx = det(Ax);
        x(i) = detAx ./ detA;
    end
end
