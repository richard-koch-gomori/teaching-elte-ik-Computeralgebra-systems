

disp('calculate with for loop')

a = 0;
b = 1/1000.0;

disp(a - 0)

for idx = 0:999
    a = a + b;
end
disp(a - 1)

a = 0;
for idx = 0:9999
    a = a + b;
end
disp(a - 10)

disp('calculate without for loop')

x(1:1000) = 1/1000;
disp(sum(x) - 1)

x(1:10000) = 1/1000;
disp(sum(x) - 10)

disp('root example')

c = sqrt(2019000000.0);
d = sqrt(2018000000.0);
res1 = c - d;
res2 = 1.0 / (c + d);
disp(res1)
disp(res2)
