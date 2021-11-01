clc; clear;

%Number 1
Aq1 = 135 + 45;
Bq1 = 235 * 645;
Cq1 = 12.45 / 17.56;
Dq1 = sin(pi/6);
Eq1 = exp(0.5);
Fq1 = sqrt(2);

%Number 2
format long;

Aq2 = 135 + 45;
Bq2 = 235 * 645;
Cq2 = 12.45 / 17.56;
Dq2 = sin(pi/6);
Eq2 = exp(0.5);
Fq2 = sqrtm(2);



%Number 4
a = 123456;
b = 3/14;
c = cos(pi/8);

eq1 = (a+b)/c;
eq2 = (2*a) - (3*b);
eq3 = c^2 - sqrt(a-b);
eq4 = a/((3*b) + (4*c));
eq5 = exp(a^1/4 - b^10);

%Number 5
insine   = asind(0.5);
incosine = acosd(sqrt(3/2));
intan    = atand(2);

%Number 6
cubes = size(15);
for i = 1:15
    cubes(i) = i^3;
end

sins = size(16);
for n = 1:16
    sins(n) = sin(n*pi/16);
end


squaroot = size(10);
ctr=10;
for ns = 1:10
    squaroot(ns) = sqrt(ctr);
    ctr = ctr + 1;
end

%Number 7

Aq7 = [1 2 3; 2 3 4; 3 4 5];
Bq7 = [-1 2 -1; -3 -4 5; 2 3 -4];
Cq7 = [0 -2 3; -3 5 2; 1 1 -7];

cal1 = (2*Aq7)-(3*Bq7);
cal2 = (Aq7)';
cal3 = (Aq7*Bq7) - (Aq7*Bq7);
cal4 = (Bq7*Cq7)^-1;
cal5 = (Aq7*Bq7)';
cal6 = Aq7'*Bq7';
cal7 = Aq7^2 + Bq7^3;

%Number 8
det1 = det(cal1);
det2 = det(cal2);
det3 = det(cal3);
det4 = det(cal4);
det5 = det(cal5);
det6 = det(cal6);
det7 = det(cal7);


%number 9
xx = (0:0.1:10);
plot(xx,tan(xx))                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
figure, plot(xx,tan(xx)), axis([0,10,-10,10])
