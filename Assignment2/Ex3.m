digit_num = 20;
digit_dur = 0.2;
Fs = 44100;
Ts = 1/Fs;
for ii = (1:digit_num)
    key = randi([0, 11]);
    x = ss_dtmf1(key, digit_dur, Ts);
    sound(x, Fs);
    pause_dur = rand() / 2;         % 0-0.5
    pause(digit_dur + pause_dur);
end
