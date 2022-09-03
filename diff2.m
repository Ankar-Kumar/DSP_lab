clc
clear all
close all

x=zeros(1,20);
x=[x,ones(1,20)]
n=1:30
r=zeros(1,1)

for i=1:30
    
     r(i)=0.1667*x(i)
    for j=1:5
        
        if(i-j>0)
            r(i)=r(i)+0.1667*x(i-j)
        else 
        end
    end
    
end

stem(n,r)