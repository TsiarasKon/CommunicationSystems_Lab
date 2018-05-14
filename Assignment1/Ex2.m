% A
% Assuming function behaviour changes at t=-2.5s, t=3s and t=4s
% The function: y(t) = 2*r(t+2.5) - 4*r(t) + 2*r(t-3) + u(t-4)

hold on
grid on, axis([-5 5 -3 5]);
title('y(t) = 2r(t+2.5) - 4r(t) + 2r(t-3) + u(t-4)'); 
xlabel('t (sec)'), ylabel('y(t)');
t=-5:1e-6:5;
y = 2*r(t+2.5) - 4*r(t) + 2*r(t-3) + u(t-4);
plot(t, y);
hold off

% B
[ye, yo] = evenodd(t, y);

figure(2);
subplot(2, 1, 1);
hold on
grid on, axis([-5 5 -2 6]);
title('Even part');
plot(t, ye);
hold off

subplot(2, 1, 2);
hold on
grid on, axis([-5 5 -2 6]);
title('Odd part');
plot(t, yo);
hold off
