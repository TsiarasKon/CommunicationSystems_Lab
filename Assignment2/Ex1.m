key = input('Insert key to listen (0-9, 10 for "*", 11 for "#"): ');
while key < 0 || key > 11     
    disp('Invalid key.');
    key = input('Insert key to listen (0-9, 10 for "*", 11 for "#"): ');
end
Fs = 8000;
x = ss_dtmf1(key, 0.2, 1/Fs);
sound(x, Fs);
