clc; clear all; close all;
%paramitters
A = 100;
alpha = 2;
f = 10;
phi =0;
fs = 200;
T = 1/fs;
t = -1: T :1;
%exponential growing sinin signal
x= A * exp(alpha * t) .* sin(2*pi*f*t + phi);

% reflected Signal 
x_reflected = A * exp(alpha * (-t)) .* sin(2*pi*f*(-t) + phi);

%even signal
x_even = (x + x_reflected)/2;

%odd signal
x_odd = (x - x_reflected)/2;

%reconstraction signal
x_reconstaction = x_even + x_odd;

%plots differents signal
figure;
plot(t,x);
title('Discrit time Exponential growing signal:');
xlabel('Time(s)');
ylabel('Amplitude');

figure;
plot(t,x_reflected);
title('Reflected signal');
xlabel('Time(s)');
ylabel('Amplitude');

figure;
subplot(2,1,1);
plot(t,x_even);
title('Even Part');
xlabel('Time(s)');
ylabel('Ampletude');

subplot(2,1,2);
plot(t,x_odd);
title('Odd Part');
xlabel('Time(s)');
ylabel('Amplitude');

%reconstruction signal
figure;
plot(t,x_reconstaction);
title('The riflected signal is: ');
xlabel('Time(s)');
ylabel('Amplitude');