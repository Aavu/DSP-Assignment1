%%
% V. Margot Paez
% Raghavasimhan Sankaranarayanan
% DSP - Assignment #1
%

clc;
close all;
%% Problem 1
% * length will be 100+200-1=299
% * x = DC signal; y = symmetric triangle
N = 200;
M = 51;
t = 0:1:N+M-2;
x = ones(N,1);
h = (0:1:(M-1)/2)./((M-1)/2);
h_r = 1-h;
h = [h h_r(2:(M+1)/2)]';
y_time = myTimeConv(x,h);
figure
plot(t,y_time)
xlabel("Time (samples)");
ylabel("Amplitude");
title("My Time Domain Convolution");


%% Problem 2
% * x = DC signal; y = symmetric triangle
N = 200;
M = 51;
t = 0:1:N+M-2;
x = ones(200,1);
h = [linspace(0,1,26) linspace(1-1/25,0,25)]';
y_freq = myFreqConv(x,h);
figure
plot(t,y_freq)
xlabel("Time (samples)");
ylabel("Amplitude");
title("My Frequency Domain Convolution");

%% Problem 3
x = audioread('piano.wav');
h = audioread('impulse-response.wav');

[m, mabs, stdev, time] = CompareConv(x(:,1), h(:,1));

