% Define the time vector
t = -5:0.01:5;

% Define the continuous-time step function
u = t >= 0;

% Plot the continuous-time step function
figure;
plot(t, u, 'LineWidth', 2);
title('Continuous-Time Step Function');
xlabel('Time (t)');
ylabel('u(t)');
grid on;
