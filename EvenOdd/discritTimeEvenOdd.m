clc; close all; clear;

% Define the input signal x[n]
n = -1:1;
x = sin(n);
% Display input signal
disp('Input Signal');
disp(x);

% Define the reflected signal
x_ref = sin(-n);
% Display reflected signal
disp('Reflected Signal');
disp(x_ref);

% Calculate the even part of the signal
x_even = (x + x_ref) / 2;
% Display even part
disp('Even Part');
disp(x_even);

% Calculate the odd part of the signal
x_odd = (x - x_ref) / 2;
% Display odd part
disp('Odd Part');
disp(x_odd);

% Reconstruct the signal from its even and odd parts
x_recon = x_even + x_odd;
% Display reconstructed signal
disp('Reconstructed Signal');
disp(x_recon);

% Plot the original sine signal
figure;
stem(n, x, 'b', 'LineWidth', 1.5);
title('Original Sine Signal');
xlabel('n');
ylabel('sin(n)');
grid on;

% Plot the reflected signal
figure;
stem(n, x_ref, 'r', 'LineWidth', 1.5);
title('Reflected Signal');
xlabel('n');
ylabel('sin(-n)');
grid on;

% Plot the even part of the signal
figure;
stem(n, x_even, 'g', 'LineWidth', 1.5);
title('Even Part of the Signal');
xlabel('n');
ylabel('x_{even}[n]');
grid on;

% Plot the odd part of the signal
figure;
stem(n, x_odd, 'm', 'LineWidth', 1.5);
title('Odd Part of the Signal');
xlabel('n');
ylabel('x_{odd}[n]');
grid on;

% Plot the reconstructed signal
figure;
stem(n, x_recon, 'k', 'LineWidth', 1.5);
title('Reconstructed Signal');
xlabel('n');
ylabel('x_{recon}[n]');
grid on;
