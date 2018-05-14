hold on
grid on, axis([-5 5 -1 7]);
title('y(t) = 3r(t+3) - 6r(t+1) + 3r(t) - 3u(t-3)');
t=-5:1e-6:5;
y = 3*r(t+3) - 6*r(t+1) + 3*r(t) - 3*u(t-3);
plot(t, y);
hold off
