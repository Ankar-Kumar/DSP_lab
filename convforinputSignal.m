
clc
clear all

t=0:0.01:1;
x=sin(2*pi*30*t);
h=[1 2 3 4]
N1 = 10;
N2 = length(h);
X = [x, zeros(1, N2)] %padding of N2 zeros to x
H = [h, zeros(1, N1)] %padding of N1 zeros to h
for i = 1:N1+N2-1
    y(i) = 0;
    for j = 1:i
            y(i) = y(i) + X(j) * H(i-j+1);
        
    end
end
yy=conv(x,h);
yy
y
t=0:1:10;
stem(y);
xlabel('----->n');
ylabel('y[n]');
title('Convolution of two signal');