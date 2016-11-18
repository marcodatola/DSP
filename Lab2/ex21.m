clear all;
sndfile = 'speech_female.wav';
% stores sampled audio file in x
% and sampling frequency in Fs
[x,Fs] = audioread(sndfile);
% number of samples per window
N = 512;
% stores the spectrogram achieved via STFT
% a vector F of the frequencies of the STFT's phasors
% a vector T of the time at which the STFT is performed
% % 
% the 1st argument specifies only on 1.4s 
% of the sampled data the STFT will be performed
% % 
% the 2nd argument sets the widow size to be
% equal to the number of samples defined above
% %
% the 3rd argument sets the overlap between 
% the windows equal to 3/4 of their size
% this means every window we progress of N/4 samples
% % 
% the 4th argument sets the frequencies for which 
% the DFT is performed to N*4 = 2048
% % 
% the 5th argument specifies the sampling frequency
[S,F,T] = spectrogram(x(1:Fs*1.4),N,3*N/4,N*4,Fs);
% styling and positioning of figure
f = figure('Position',[500 300 700 500],'MenuBar','none', ...
'Units','Normalized');
set(f,'PaperPosition',[0.25 1.5 8 5]);
axes('FontSize',14);
colormap('jet');
% displays the power of each frequency component
% at the different time instants
% % 
% the 1st argument provides the time vector
% % 
% the 2nd argument provides the frequencies in KHz
% % 
% the 3rd argument evaluates the spectral power 
% of the signal, at each time instant
imagesc(T,F./1000,20*log10(abs(S)));
% stylinmg of figure
axis xy;
set(gca,'YTick',[0:2000:Fs/2]./1000,'YTickLabel',[0:2000:Fs/2]./1000);
ylabel('Frequency (kHz)');
xlabel('Time (s)');
print(gcf,'-depsc2','ex21.eps');