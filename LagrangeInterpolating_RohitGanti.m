%{
Rohit Ganti
78452388
n-th Lagrange Interpolating Polynomial
%}

% defining set of x and y values and the evaluating point (a)
x = [1.00 1.05 1.10 1.15];
y = [0.1924 0.2414 0.2933 0.3492];
sum = 0;
a = 1.09;
err=0;
f= log10(tan(a)); %original function

% determining the langarnian interpolation of the polynomial through simple
% iterations
for i = 1:length(x)
    ax=1;
    bx=1;
    for j = 1:length(x)
        if j ~= i
            ax = ax*(a-x(j));
            bx = bx*(x(i)-x(j));
        end
    end
    sum=sum+ax/bx*y(i);
end

% error bound determination
err=err+abs(sum-f);

%displaying the answer
result= ['The third Lagrange Polynomial approximation to f(1.09) is ', num2str(sum), ', the error is ', num2str(err)];
disp(result);