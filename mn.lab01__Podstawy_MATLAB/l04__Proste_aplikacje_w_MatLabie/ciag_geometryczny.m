function [Sn] = ciag_geometryczny(a1, q, n)
%Funcja wyznaca ciag aretmetyczny
%  a1 = pierwszy wyraz ciągu
%  q  = iloraz ciągu
%  n  = ilosć wyrazów


Sn = a1 * ( (1-q^n) / (1 - q));