clc;
clear all;
close all;


x=[1 1 2 2 3 3 4 4 0 0]

l=length(x);
point=2.^nextpow2(l);
t=0:point-1;

x=[x,zeros(1,point-l)]
subplot(3,1,1);
stem(t,x);


X=zeros(point,1);
for n=1:point
    for m=1:point
        X(n)=X(n)+x(m)*exp(-1j*2*pi*(n-1)*(m-1)/point);
    end
end                                      
subplot(3,1,2)
stem(t,abs(X));

Y=zeros(point,1);
for n=1:point     
        Y(n)=Y(n)+X(n)*exp(-1j*2*pi*(n-1)*2/point);    
end 
xx=zeros(point,1);
for n=1:point
    for m=1:point
        xx(n)=xx(n)+Y(m)*exp(1j*2*pi*(n-1)*(m-1)/point)/point;
    end
end 

subplot(3,1,3);
stem(t,abs(xx));








