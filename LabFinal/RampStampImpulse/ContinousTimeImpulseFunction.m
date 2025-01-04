% Define the time vector
t = -1:0.01:1;

% Define the continuous-time impulse function
delta = t == 0;

% Plot the continuous-time impulse function
figure;
stem(t, delta);
title('Continuous-Time Impulse Function');
xlabel('Time (t)');
ylabel('delta(t)');
grid on;
