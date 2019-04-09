%% Cross Correlation Probability of Detection
%%
clear                                  % Clear all data stored in variables
Am = 1;                                % 1V Amplitude     
SR = 48000;                            % 48 KHz Smapling Rate
f0 = 20e+3;                            % 20 KHz
duration = (127/SR);                   % ~ 2.6 ms 
t = 0:1/SR:duration;                   % Time Vector
%%
sinusPulse = Am*sin(2*pi*f0*t);  % Signal with 20 KHz
%%
mySNR = -30:30;
threshold = 24;
%%
find_PD_2C(sinusPulse,threshold,mySNR)
%%
function find_PD_2C(yourSignal,threshold,snr)
    N = length(yourSignal);
    for i = 1:length(snr)
        Pd_buff(100) = 0;
        for j = 1:100
            noisySignal = awgn(yourSignal,snr(i));
            [acor, ~] = xcorr(noisySignal,yourSignal);
            Pd_buff(j) = sum(abs(acor) > threshold)/length(acor);
        end
        Pd = sum(Pd_buff)/100;
        plot(snr(i),Pd,'+')
        hold on
    end
    title('Cross Correlation')
    ylabel('Probability of Detection')
    xlabel('SNR dB')
    hold off
end