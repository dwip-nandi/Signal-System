A= 200;
alpha = -3; % for damping signal
f =20;
fs= 100;
T= 1/fs;
t = -1:T:1;
phi = 2;

% exponential damping cosin signal
x_original = A *exp(alpha * t) .* cos(2*pi*f*t +phi);

% reflected signal 
x_reflected = A * exp(alpha *(-t)) .* cos(2*pi*f*(-t) + phi);

%even part
x_even = (x_original + x_reflected)/2;

%odd part
x_odd = (x_original - x_reflected)/2;

% Reconstructiin Signal
x_reconstruction = (x_even + x_odd);

%figure the different sigs
figure;
plot(t,x_original);
title('Otiginal Exponential signal');
xlabel('Time(s)');
ylabel('Amplitude');

figure;
plot(t,x_reflected);
title('Reflecter signal');
xlabel('Time(s)');
ylabel('Amplitude');

figure;
subplot(2,1,1);
plot(t,x_even);
title('Even Part of exponential signal');
xlabel('Time(s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t,x_odd);
title('Odd Part of exponential signal');
xlabel('Time(s)');
ylabel('Amplitude');

figure;
plot(t,x_reconstruction);
title('Reconsteruction Signalof exponential signal');
xlabel('Time(s)');
ylabel('Amplitude');
