Fs = 8000;
dt = 1;
nd = 0.2;
np = 0.08;
%number = [2 1 0 7 7 7 1 2 3 4];
AM = [1 1 1 5 2 0 1 5 0 0 1 6 5];
Y = ss_dtmf(AM, Fs, dt, nd, np);
play_sound(Y, Fs, (nd + np) * dt);
