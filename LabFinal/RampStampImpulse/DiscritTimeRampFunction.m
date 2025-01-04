% Define the discrete time vector
n = -10:10;

% Define the discrete-time ramp function
R = max(0, n);

% Plot the discrete-time ramp function
figure;
stem(n, R);
title('Discrete-Time Ramp Function');
xlabel('Time Index (n)');
ylabel('R[n]');
grid on;
