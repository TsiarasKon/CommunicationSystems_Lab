function [x] = ss_dtmf1(key, t, Ts)
    f1_all = [697 770 852 941];
    f2_all = [1209 1336 1477];
    if key < 0 || key > 12
        disp('Invalid key.');
        return
    elseif key == 12
        f1 = 0;
        f2 = 0;
    elseif key == 11
        f1 = f1_all(4);
        f2 = f2_all(3);
    elseif key == 10
        f1 = f1_all(4);
        f2 = f2_all(1);
    elseif key == 0
        f1 = f1_all(4);
        f2 = f2_all(2);
    else
        f1 = f1_all(floor((key - 1) / 3) + 1);
        f2 = f2_all(mod((key - 1), 3) + 1);
    end
    time = 0:Ts:t;
    x = sin(2*pi*f1*time) + sin(2*pi*f2*time);
    % sound(x, 1/Ts);
end
