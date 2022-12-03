
disp('Macierz A: ');
sizeA = [input('    rows: '), input('    columns:')];

disp('Macierz B: ');
sizeB = [input('    rows: '), input('    columns:')];

A = zeros(sizeA(1), sizeA(2));
B = zeros(sizeB(1), sizeB(2));
C = zeros(sizeA(1), sizeB(2));

if(sizeA(2) == sizeB(1))
    disp('Macierz A: ');
    for i=1:sizeA(1)
        for j=1:sizeA(2)
            A(i,j) = input('    Podaj liczbe: ');
        end
    end
    disp(A);
    disp('Macierz B: ');
    for i=1:sizeB(1)
        for j=1:sizeB(2)
            B(i,j) = input('    Podaj liczbe: ');
        end
    end
    disp(B);
    
    disp('Wynik mnożenia macierzy: ');
    for i=1:sizeA(1)
        for j=1:sizeB(2)
            for k=1:sizeA(2)
                C(i,j) = C(i, j) + A(i, k) * B(k, j);
            end
        end
    end

    disp(C);
    
else
    error('Wymiary macierze ni są take same!');
end

