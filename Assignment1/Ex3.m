Ts = 1e-3;
t=-5:Ts:5;
ax = [-5 5 -0.5 1.5];

subplot(2, 3, 1);
hold on
grid on, axis(ax);
title('x(t)');
x = r(t) - r(t-1) - u(t-1);
plot(t, x);
hold off

subplot(2, 3, 2);
hold on
grid on, axis(ax);
title('v(t)');
v = fliplr(x);      % reflection
plot(t, v);
hold off

subplot(2, 3, 3);
hold on
grid on, axis(ax);
title('y(t)');
y = my_delay(v, 2, Ts);
plot(t, y);
hold off

%%%

subplot(2, 3, 4);
hold on
grid on, axis(ax);
title('x(t)');
x = r(t) - r(t-1) - u(t-1);
plot(t, x);
hold off

subplot(2, 3, 5);
hold on
grid on, axis(ax);
title('w(t)');
w = my_delay(x, 2, Ts);
plot(t, w);
hold off

subplot(2, 3, 6);
hold on
grid on, axis(ax);
title('z(t)');
z = fliplr(w);      % reflection
plot(t, z);
hold off

% We observe that the results are NOT the same.
