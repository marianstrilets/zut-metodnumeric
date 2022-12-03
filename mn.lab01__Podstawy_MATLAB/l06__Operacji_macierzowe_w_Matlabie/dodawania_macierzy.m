
disp('Macierz A:');
sizeA = [input('    rows:'),input('    columns: ')];
disp('Macierz B:');
sizeB = [input('    rows:'),input('    columns: ')];

if (sizeA(1) == sizeB(1) && sizeA(2) == sizeB(2) )

    disp('Macierz A:');
    for i=1:sizeA(1)
        for j=1:sizeA(2)
            A(i,j) = input('    Podaj liczbe: ');
        end 
    end
    disp('Macierz A:');
    disp(A);

    disp('Macierz B:');
    for i=1:sizeB(1)
        for j=1:sizeB(2)
            B(i,j) = input('    Podaj liczbe: ');
        end 
    end
    disp('Macierz B:');
    disp(B);

    disp('Wynik dodawania macierzy: ');
    C = A + B;
    disp(C);

else
    error('Wymiary macierze ni są take same!');
end
