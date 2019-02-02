function y = myFreqConv(x,h)
%myFreqConv Frequency domain convolution
    N = length(x);
    M = length(h);
    
    x = cat(1, x, zeros(M-1, 1));
    
    h = cat(1, h, zeros(N-1, 1));
    
    X = fft(x);
    H = fft(h);
    y = ifft(X.*H);
    
    clear N M L x h X H;
end

