
function [result] = abs_number(num)
%Funkcja wyznacza wartość bezwzględną
if (num < 0)
    result = -1 * num;
else
    result = num;
end