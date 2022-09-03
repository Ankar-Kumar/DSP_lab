x = [1 2 3 4]
h = [1 1 1 1]
y = conv(x, h);
y
stem(y);
xlabel('c');
ylabel('Output Sequence');
title('Convolution between two sequences');