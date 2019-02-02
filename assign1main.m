clc;
clear all;
close all;

% N = 200;
% M = 51;
% 
% t = 0:1:N+M-2;
% 
% x = ones(N, 1);

% triangular function
% h = (0:1:(M-1)/2)./((M-1)/2);
% h_r = 1-h;
% h = [h h_r(2:(M+1)/2)];
% h = transpose(h);

% y_time = myTimeConv(x, h);
% plot(t, y_time);
% xlabel("Time (samples)");
% ylabel("Amplitude");
% title("My Time Domain Convolution");

% y_freq = myFreqConv(x, h);
% plot(t, y_freq);
% xlabel("Time (samples)");
% ylabel("Amplitude");
% title("My Frequency Domain Convolution");

x = audioread("piano.wav");
h = audioread("impulse-response.wav");
% y_time = myTimeConv(x, h);
% t = 0:1:length(x)+length(h)-2;
% plot(t, y_time);
% xlabel("Time (samples)");
% ylabel("Amplitude");
% title("My Time Domain Convolution");
[m, mabs, stdev, time] = CompareConv(x, h)