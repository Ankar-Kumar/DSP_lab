clc; close all; clear all;

input_data = zeros(1,10);
input_data(1) = 1;

y_cofficient = [1 -0.97];
x_cofficient = [1];


% using build-in function
yn_function_generated = filter(x_cofficient,y_cofficient,input_data);

% using my function
yn = myFilter(x_cofficient, y_cofficient, input_data);
disp(yn)
% subplot(4,1,1)
% % plot(input_data);
% stem(input_data);
% title('Input data');
% grid on;

% plot(yy, LineWidth=1);
stem(yn);
title('Custom calculated');
grid on;
% 
% subplot(4,1,4);
% % plot(y, LineWidth=1);
% stem(yn_function_generated);
% title('Function generated');
% grid on;
