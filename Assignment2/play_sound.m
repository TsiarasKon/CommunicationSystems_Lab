function [] = play_sound(Y, Fs, pause_dur)
% pause_dur: The sum of the digit's sound duration 
%            plus the requested pause duration
    for s = Y.'
        sound(s, Fs);
        pause(pause_dur);
    end
end