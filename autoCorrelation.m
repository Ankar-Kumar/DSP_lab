x = input('enter the input sequence of a signal x(n)');
n1 = input('enter the time sample range:');
n2 = -fliplr(n1);

h = fliplr(x);
n = length(x);

X = [x, zeros(1, n)];
Y = [h, zeros(1, n)];

for i=1:n+n-1
  y(i)=0;
  for j=1:n
    if(i-j+1>0)
      y(i)= y(i) + X(j)*Y(i+1-j);
    else
     end
  end
end
yy=xcorr(x,x)
yy
y
mn=min(n1)+min(n2)
mx=max(n1)+max(n2)
t=mn:1:mx;
stem(t,y);
xlabel('R_x_x');
ylabel('value');
title('Auto-correlation');