function [ye,yo] = evenodd(t,y)
% even/odd decomposition
% t: time
% y: analog signal
% ye, yo: even and odd components

yr = fliplr(y);
ye = 0.5*(y + yr);
yo = 0.5*(y - yr);

end
