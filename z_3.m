%Rozwiąz rownanie x^3 + 2*x^2 - 100 = 0 z dokładnoscią 0.005
%odpowiedzi: 1;

x = fzero('(x^3) + (2*x^2) - 100', 0.005);

disp(x);