
%Pętła sterowana liczniekiem FOR
a = input("Wprowadz wartosc dla zmiennnej a: ");
b = input("Wprowadz wartosc dla zmiennnej b: ");

for i=1:2:9
    a = a + 10;
    b = b + 100;
    var = sprintf('i = %d | a = %d | b = %d ', i,a,b);
    disp(var);
end
