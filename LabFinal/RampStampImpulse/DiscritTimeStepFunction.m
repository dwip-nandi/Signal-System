% Define the discrete time vector
n = -10:10;

% Define the discrete-time step function
u = n >= 0;

% Plot the discrete-time step function
figure;
stem(n, u, 'LineWidth', 2);
title('Discrete-Time Step Function');
xlabel('Time Index (n)');
ylabel('u[n]');
grid on;
