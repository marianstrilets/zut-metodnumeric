%______Metody numeryczne LAB2_______________
%____Rozwiązania układu równań liniowych____
%__Metoda Eliminacji Gaussa-Jordana_________

function x = gauss_jordan_elimination(Ax, B)
    n = size(B, 1);
    AxB = [Ax B];
    for i=1 : n
        AxB(i,:) = AxB(i,:)./AxB(i,i);
        for j=1 : n
            if i ~= j 
                AxB(j,:)=AxB(j,:)-AxB(i,:)*AxB(j,i);
            end
        end
    end
    x = AxB(:,n+1);
end