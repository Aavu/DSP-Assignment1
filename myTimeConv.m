function y = myTimeConv(x,h)
%myTimeConv Time series convolution implementation
%   Using 1 for loop with vector dot product
    N = length(x);
    M = length(h);
    L = N + M - 1;
    y = zeros(L, 1);
    x = cat(1, x, zeros(M-1, 1));
    h = cat(1, h, zeros(N-1, 1));
    for i=1:L 
        y(i) = dot(x(1:i),h(i-(1:i)+1)); 
    end
    
    clear N M L x h;
end

