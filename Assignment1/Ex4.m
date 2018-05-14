% Á
t=-5:1e-6:5;

hold on
grid on;
title('x_1(t) = 4cos(ðt)'); 
x1 = 4*cos(pi*t);
plot(t, x1);
hold off

figure(2);
hold on
grid on;
title('x_2(t) = -sin(3ðt + ð/2)'); 
x2 = -sin(3*pi*t + pi/2);
plot(t, x2);
hold off

% Â
figure(3);
hold on
grid on;
title('y(t) = x_1(t) + x_2(t)'); 
y = x1 + x2;
plot(t, y);
hold off
% Yes, y(t) is periodic.

% C1
figure(4);
hold on
grid on;
title('y_1(t)');  
x1 = 4*cos(2*pi*t); 
y = x1 + x2;
plot(t, y);
hold off
% Yes, y_1(t) is periodic.

% C2
figure(5);
hold on
grid on;
title('y_2(t)');  
x1 = 4*cos(2*t); 
y = x1 + x2;
plot(t, y);
hold off
% No, y_2(t) isn't periodic.
