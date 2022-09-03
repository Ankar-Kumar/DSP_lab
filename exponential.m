a1=10
a2=20
a3=40

f1=4
f2=8
f3=16

t=0:0.001:1
x=a1*sin(2*pi*f1*t)+a2*sin(2*pi*f2*t)+a3*sin(2*pi*f3*t)


fs1=40
t1=0:1/40:1
x1=a1*sin(2*pi*f1*t1)+a2*sin(2*pi*f2*t1)+a3*sin(2*pi*f3*t1)
% t1 x1

fs2=20
t2=0:1/20:1
x2=a1*sin(2*pi*f1*t2)+a2*sin(2*pi*f2*t2)+a3*sin(2*pi*f3*t2)

% fft(x,x1,x2)

subplot(2,1,1)
plot(t,x,'red')
hold on
plot(t1,x1,'g')
plot(t2,x2);
hold on
% subplot(2,1,1)
% stem(t,x);

a1=12
x1=a1*sin(2*pi*f1*t)+a2*sin(2*pi*f2*t)+a3*sin(2*pi*f3*t)
signal1=x1;
nbit1=2
level1=2.^nbit1
mn1=min(signal1)
mx1=max(signal1);
scalingFac1=(mx1-mn1)/(level1-1);
signal1=signal1/scalingFac1;
signal1=round(signal1)
signal1=signal1*scalingFac1;

%8 bit

signal2=x;
nbit2=4
level2=2.^nbit2
mn1=min(signal2)
mx1=max(signal2);
scalingFac2=(mx1-mn1)/(level2-1);
signal2=signal2/scalingFac2;
signal2=round(signal2)
signal2=signal2*scalingFac2;


subplot(2,1,2)
hold on
plot(t,x,'b')
hold on
plot(t,signal1,'g')
hold on
plot(t,signal2,'r');

max(x)
max(signal2)
% % %error
% signal=signal1-x;
% subplot(2,1,2)
% plot(t,signal,'g')

