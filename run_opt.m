function run_opt()

A = csvread('A 2.csv');
b = csvread('bNOVO1.csv');
f = csvread('f1.csv') * -1;

n = numel(f);

intcon = 1:n;
intcon = intcon(:);
lb = zeros(n, 1);
ub = ones(n, 1);

%[x, fval, exitflag, output] = intlinprog(f, intcon, A, b, [], [], lb, ub);
[x, fval, exitflag, output] = intlinprog(f, intcon, [], [], A, b, lb, ub);

% fval = 101877
fprintf('%g\n', fval * -1);

save('result.mat')

end