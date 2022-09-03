clc
clear all

h = [1 2 1 -1]
x= [1 2 3 1]
N1 = length(x);
N2 = length(h);
X = [x, zeros(1, N2)] %padding of N2 zeros to x
H = [h, zeros(1, N1)] %padding of N1 zeros to h
for i = 1:N1+N2-1
    y(i) = 0;
    for j = 1:i
            y(i) = y(i) + X(j) * H(i-j+1);
        
    end
end
y
stem(y);
xlabel('----->n');
ylabel('y[n]');
title('Convolution of two signal');