a = 1;
f = 128;
Fs = 2048;
w = 2*pi*f;

N = 32;
n = [0:N-1];

x = a*sin(w*n/Fs);
mfft = fft(x);
k = Fs/N*n;
ang = angle(mfft);

figure;
stem(k,ang,'k');
grid on;
axis([0 Fs/2 -pi pi]);
set(gca, 'Xtick', [0:Fs/N:Fs/2], 'Ytick',[-pi:pi/2:pi],'Yticklabel',{'- pi','-pi/2', '0', 'pi/2', 'pi'});
ylabel('Phase (Rad)');
xlabel('Frequency (Hz)');
print(gcf,'-depsc2','ex13.eps');

