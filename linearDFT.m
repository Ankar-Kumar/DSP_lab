clc;
clear all;
close all;

t=0:0.001:1;
x=sin(2*pi*10*t);
y=cos(2*pi*20*t);

N=8;

xy=x+y;
X=dftFunc(N,x);
Y=dftFunc(N,y);
ans=X+Y;
xy=dftFunc(N,xy);

disp(xy);
disp(ans);

