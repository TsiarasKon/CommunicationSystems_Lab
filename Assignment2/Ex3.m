Fs = 44100;
Ts = 1/Fs;
for ii = (1:20)
    sig_dur = 0.2;
    key = randi([0, 11]);
    x = ss_dtmf1(key, sig_dur, Ts);
    sound(x, Fs);
    pause_dur = rand() / 2;         % 0-0.5
    pause(sig_dur + pause_dur);
end