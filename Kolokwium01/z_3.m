%Rozwiąz rownanie x^3 + 2*x^2 - 100 = 0 z dokładnoscią 0.005
%odpowiedzi: 1;

x1 = fzero('(x^3) + (2*x^2) - 100', 0.005);
disp(x1);


%x2 = fzero(@(x) x^3 + 2*x^2 - 100, [0 5]);
%disp(x2);
