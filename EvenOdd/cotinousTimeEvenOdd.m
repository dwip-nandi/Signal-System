clc; close all; clear;

% Define the time vector for continuous-time signal
t = -2*pi:0.01:2*pi;

% Define the original continuous-time signal
x = sin(t);

% Define the reflected signal
x_ref = sin(-t);

% Calculate the even part of the signal
x_even = (x + x_ref) / 2;

% Calculate the odd part of the signal
x_odd = (x - x_ref) / 2;

% Reconstruct the signal from its even and odd parts
x_recon = x_even + x_odd;

% Plot the original sine signal
figure;
plot(t, x, 'b', 'LineWidth', 1.5);
title('Original Sine Signal');
xlabel('t');
ylabel('sin(t)');
grid on;

% Plot the reflected signal
figure;
plot(t, x_ref, 'r', 'LineWidth', 1.5);
title('Reflected Signal');
xlabel('t');
ylabel('sin(-t)');
grid on;

% Plot the even part of the signal
figure;
plot(t, x_even, 'g', 'LineWidth', 1.5);
title('Even Part of the Signal');
xlabel('t');
ylabel('x_{even}(t)');
grid on;

% Plot the odd part of the signal
figure;
plot(t, x_odd, 'm', 'LineWidth', 1.5);
title('Odd Part of the Signal');
xlabel('t');
ylabel('x_{odd}(t)');
grid on;

% Plot the reconstructed signal
figure;
plot(t, x_recon, 'k', 'LineWidth', 1.5);
title('Reconstructed Signal');
xlabel('t');
ylabel('x_{recon}(t)');
grid on;
