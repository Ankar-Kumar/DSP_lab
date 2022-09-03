clc
clear all
x=[ones(1,5)]
x
for i=1:5
    
    if(i==1)
        y(i)=.25*x(i)
    else
        y(i)=y(i-1)*0.5+.25*x(i)+.25*x(i-1)
    end
    
end
n=1:5
stem(n,y)