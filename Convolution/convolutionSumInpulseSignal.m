clc; close all; clear;
% Define the input signal x[n]
x = [1 2 3 4 5];

% Define the impulse response h[n]
h = [1 1 1];

% Calculate the length of the output signal
N = length(x) + length(h) - 1;

% Initialize the output signal y[n]
y = zeros(1, N);

% Perform the convolution sum
for n = 1:N
    for k = 1:length(x)
        if (n - k + 1 >= 1) && (n - k + 1 <= length(h))
            y(n) = y(n) + x(k) * h(n - k + 1);
        end
    end
end

% Display the output signal
disp('Output signal y[n]:');
disp(y);

% Plot the signals
n = 0:length(x)-1;
figure(1);
%subplot(3,1,1);
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('Input Signal x[n]');

n = 0:length(h)-1;
%subplot(3,1,2);
figure(2);
stem(n, h);
xlabel('n');
ylabel('h[n]');
title('Impulse Response h[n]');

n = 0:length(y)-1;
%subplot(3,1,3);
figure(3);
stem(n, y);
xlabel('n');
ylabel('y[n]');
title('Output Signal y[n]');