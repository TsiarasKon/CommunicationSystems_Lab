function [Y] = ss_dtmf(number, Fs, dt, nd, np)
    Ts = 1/Fs;
    digit_dur = dt * nd;
    Y = [];
    for digit = number
        x = ss_dtmf1(digit, digit_dur, Ts);
        Y = [Y; x];
    end
    % play_sound(Y, Fs, (nd + np) * dt);
end
