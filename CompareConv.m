function [m, mabs, stdev, time] = CompareConv(x, h)
%CompareConv Summary of this function goes here
%   Detailed explanation goes here
    tic;
    y_time = myTimeConv(x, h);
    time(1) = toc;
    
    tic;
    y_freq = myFreqConv(x, h);
    time(2) = toc;
    
    tic;
    y_conv = conv(x, h);
    time(3) = toc
    
    clear functions;
    d_time = minus(y_time, y_conv);
    d_freq = minus(y_freq, y_conv);
    clear y_conv y_time y_freq;
    m = [mean(d_time), mean(d_freq)];
    mabs = [mean(abs(d_time)), mean(abs(d_freq))];
    stdev = [std(d_time), std(d_freq)];
end

