function [y] = my_delay(x, d, Ts)
% delay x by d seconds
% Ts: sampling time

N = d/Ts;
y = [zeros(1, N) x(1:end-N)];

end

