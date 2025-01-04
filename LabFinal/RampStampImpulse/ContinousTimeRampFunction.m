% Define the time vector
t = -5:0.01:5;

% Define the continuous-time ramp function
R = max(0, t);

% Plot the continuous-time ramp function
figure;
plot(t, R);
title('Continuous-Time Ramp Function');
xlabel('Time (t)');
ylabel('R(t)');
grid on;
