load("Lab4_Data.mat");

L = length(xspeech);
subplot(2,2,1);
MagSpect(xspeech);
title('Initial Plot');

Freqency = 4000;
CARY = osc(Freqency, L, Fs);

moddedsig = xspeech .* CARY; 

sigtrans = conv(moddedsig, hChannel); 


if length(CARY) > length(sigtrans) 
 CARY = CARY(1:length(sigtrans));
else
 CARY = [CARY; zeros(length(sigtrans) - length(CARY), 1)];
end

subplot(2,2,2);
MagSpect(sigtrans);
title('hChannel Filter');


RecievingSig = sigtrans .* CARY;
subplot(2,2,3);
MagSpect(RecievingSig);
title('speech Recieved from Channel');

SigReco = conv(RecievingSig, hLPF2500);
SigRecoOG = SigReco .* 2;
subplot(2,2,4);
MagSpect(SigRecoOG);
title('Orignal Recovered mag spectra');

%sound comparison
sound(xspeech, Fs)
pause(4)
sound(SigRecoOG, Fs)














