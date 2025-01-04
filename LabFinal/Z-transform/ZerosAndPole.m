 close all; clear all;
% Define the numerator and denominator of the transfer function
numerator = [1, 1]; % Example coefficients
denominator = [1, -1.5, 0.5]; % Example coefficients

% Compute the zeros and poles using the roots() function
zeros = roots(numerator);
poles = roots(denominator);

% Plot the poles and zeros on the Z-plane using the zplane() function
figure;
zplaneplot(numerator, denominator);
title('Poles and Zeros on the Z-Plane');
xlabel('Real Part');
ylabel('Imaginary Part');
hold on;

theta = linspace(0, 2*pi, 100);

% Plot the first circl
r1 = 0.5; % Radius of the first circle
x1 = r1 * cos(theta);
y1 = r1 * sin(theta);
plot(x1, y1, 'r--'); % Red dashed circle

% Plot the second circle
r2 = 1; % Radius of the second circle
x2 = r2 * cos(theta);
y2 = r2 * sin(theta);
plot(x2, y2, 'b--'); % Blue dashed circle

hold off;

% Discuss the ROC based on the sequence type
disp('Region of Convergence (ROC):');
if all(abs(poles) < 1)
    disp('The ROC is |z| > max(|poles|) (causal sequence)');
elseif all(abs(poles) > 1)
    disp('The ROC is |z| < min(|poles|) (anti-causal sequence)');
else
    disp('The ROC is min(|poles|) < |z| < max(|poles|) (two-sided sequence)');
end
