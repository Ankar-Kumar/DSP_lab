function X=dftFunc(N,x)

X = zeros(N,1);%per X(0)(0) is initialized to  0;0;0;0;0N
for m = 1:N
    for n = 1:N
        X(m) = X(m) + x(n)*exp(-2j*pi*(n-1)*(m-1)/N);
    end
end