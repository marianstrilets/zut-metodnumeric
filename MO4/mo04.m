%zadanie 1
clc
clear
warning('off')

A = [4 6 15; 2 2 0; 5 3 4; 7 3 12];     
f = [2, 1.5, 3];                        
b = [250; 60; 100; 220];
lb = [0;0;0];
x = linprog(f, -A, -b, [], [], lb, []);

%produkty = floor(x);
produkty = ceil(x);

koszt = f * produkty;
skladniki = A * produkty;

disp('-------------------X:--------------')
disp(x);
disp('---------------Produkty: ---------')
disp(produkty);
disp('--------------- Koszty: ----------')
disp(koszt);
disp('---------------Skladniki: --------')
disp(skladniki);

%zadanie 2
disp('--------------------------------------------------------------------------------------------------------')


A = [5 25; 0.5 0; 100 250; 10 10];     
f = [100 200];                        
b = [500; 15; 7500; 400];
lb = [0;0;0];
x = linprog(-f, A, b, [], [], lb, []);

%produkty = floor(x);
produkty = ceil(x);

koszt = f * produkty;
skladniki = A * produkty;

disp('-------------------X:--------------')
disp(x);
disp('---------------Produkty: ---------')
disp(produkty);
disp('--------------- Koszty: ----------')
disp(koszt);
disp('---------------Skladniki: --------')
disp(skladniki);