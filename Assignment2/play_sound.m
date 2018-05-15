function [] = play_sound(Y, pause_dur)
% pause_dur: The sum of the digit's sound duration 
%            plus the requested pause duration
    for s = Y.'
        sound(s);
        pause(pause_dur);
    end
end