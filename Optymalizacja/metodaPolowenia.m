%---------------------------------------Metode połowenia------------------
counter = 0;	
while(b-a > epsilon)    
	srodek = (a+b)/2;
    counter = counter + 1;

    if (f(a)*f(srodek)<0) 
		b = srodek;
	else
		a = srodek;
    end
end
result = (a+b)/2;
disp('Współczynik metode połowenia: ')
disp(result)
disp('Ilość iteracej: ')
disp(counter);
counter = 0;
