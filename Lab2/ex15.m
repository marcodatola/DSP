r = [ zeros(1,3) 1 zeros(1,16)];
s = [1:20];
figure;
stem(s,r,'k');
grid on;
% axis([0 1100 0 2]);
label = {' ',' ',' ',' ','220',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '};
set(gca, 'Xtick', [0:1:20],...,
    'Xticklabel',label,'Ytick', []);

ylabel('Amplitude (abs)');
xlabel('Frequency (Hz)');
print(gcf,'-depsc2','ex15.eps');

