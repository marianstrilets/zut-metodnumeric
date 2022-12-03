
A1 = [3 0 1 2; 4 5 2 4; 2 7 6 3];
A2 = size(A1);
[w k] = size(A1);

e = eye(4);
z = zeros(2,5);
o = ones(2,7);

ra = rand(2,4);

X = [1 2 34 -2 34 2 1];
x = length(X);

y1 = 2:10;
y2 = 2:3:13;
y3 = 123:-17:0;

l1 = linspace(1,17,5);
l2 = linspace(0,1,5);

d1 = diag(l2);

q1 = [1 2 34 -2 7 2 1 9 4 3 45 2 3 -3 5];
q2 = q1(2 : 8);
q3 = q1(7:end);
q4 = q1(7:2:end);

a2 = A1;
da = [3,2,13];
a2 = diag(da);