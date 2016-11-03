[data, count] = readbuoydata('045200603.txt');

x = data.date;
y = data.Hs;
M = [5 21 51];
figure;

% M-order 5
for mm = 1:length(M)
    
    subplot(3,1,mm);
    plot(x,y,'Color',[0.8 0.8 0.8],'Linewidth',2);
    hold on;
    avg = ex23(y,M(mm));
    plot(x,avg,'k');
    axis([x(1) x(end) 0 3]);
    set(gca,'XTick',[x(1):(x(end) - x(1))/15:x(end)]);
    grid on;
    ylabel('Peak Period (s)');
    datetick('x',6,'keepticks','keeplimits');
    xlabel('Date');
    ylabel('Significant Wave Height (m)','FontSize',8);
    title(['M =' num2str(M(mm))]);
end

print(gcf,'-depsc2','ex26.eps');