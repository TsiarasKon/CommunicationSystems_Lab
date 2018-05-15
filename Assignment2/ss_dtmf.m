function [Y] = ss_dtmf(number, dt, nd, np)
    Fs = 8000;
    Ts = 1/Fs;
    digit_dur = dt * nd;
    Y = [];
    for digit = number
        x = ss_dtmf1(digit, digit_dur, Ts);
        Y = [Y; x];
    end
    % play_sound(Y, (nd + np) * dt);
end

