% Define the discrete time vector
n = -10:10;

% Define the discrete-time impulse function
delta = (n == 0);

% Plot the discrete-time impulse function
figure;
stem(n, delta);
title('Discrete-Time Impulse Function');
xlabel('Time Index (n)');
ylabel('delta[n]');
grid on;
