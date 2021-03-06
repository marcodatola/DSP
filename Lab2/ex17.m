a = 1;
f = 220;
Fs = 2048;
w = 2*pi*f;

N = 32;
n = [0:N-1];

x = a*sin(w*n/Fs);
mfft = fft(x);
mifft = ifft(mfft);
k = Fs/N*n;
figure;
stem(n,mifft,'k');
grid on;
axis([-1 N -(a+0.2) (a+0.2)]);
ylabel('Amplitude');
xlabel('n');
print(gcf,'-depsc2','ex17.eps');

