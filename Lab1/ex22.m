[data, count] = readbuoydata('045200603.txt');

x = data.date;
y = data.Hs;

figure;
subplot(2,1,1);
plot(x,y,'k');
axis([x(1) x(end) 0 3.5]);
set(gca,'XTick',[x(1):(x(end) - x(1))/15:x(end)]);
datetick('x',6,'keepticks','keeplimits');
grid on;
ylabel('Significant wave height (m)');




y = data.Tp;
% stairs(x,y,'k');
% 
subplot(2,1,2);
plot(x,y,'k');
axis([data.date(1) data.date(end) 0 22]);
set(gca,'XTick',[x(1):(x(end) - x(1))/15:x(end)]);
datetick('x',6,'keepticks','keeplimits');
grid on;
xlabel('Date');
ylabel('Peak Period (s)');

print(gcf,'-depsc2','ex22.eps');