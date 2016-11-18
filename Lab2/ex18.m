a = 1;
f = 220;
Fs = 2048;
w = 2*pi*f;

N = 512;
n = [0:N-1];

x = a*sin(w*n/Fs);
mfft = fft(x);
k = Fs/N*n;
figure;
stem(k,abs(mfft),'k');
grid on;
axis([0 Fs/2 0 max(abs(mfft))+1]);
set(gca, 'Xtick', [0:55*Fs/N:Fs/2]);
ylabel('Amplitude (abs)');
xlabel('Frequency (Hz)');
print(gcf,'-depsc2','ex18.eps');

