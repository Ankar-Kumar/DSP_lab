% x=[1,1,2,2]; %first signal 0r input signal
% y=[1,3,1];
clc
clear all
close all

x = input('enter the input sequence of a signal x(n)');
n1 = input('enter the time sample range:');
h = input('enter the input sequence of a signal y(n)');
n2 = input('enter the time sample range:');

n2 = -fliplr(n2);
y = fliplr(h); %second signal

N1=length(x);
N2=length(y);
X=[x, zeros(1,N2)]; %padding of N2 zeros
Y=[y, zeros(1,N1)]; %padding of N1 zeros
for i=1:N1+N2-1
    r(i)=0
    for j=1:i
       r(i)=r(i)+X(j)*Y(i+1-j)       
    end
end

rr=xcorr(x,h);
rr
r
mn=min(n1)+min(n2)
mx=max(n1)+max(n2)
t=mn:1:mx;
stem(t,r);
ylabel('r(x,y)');
xlabel('------>n');
title('correlation of two signal');