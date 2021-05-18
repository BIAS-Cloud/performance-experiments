
f1 = figure;
t = 1:1:6500;
req = test2(501:7000,2);
plot(t,req,'LineWidth',2, 'color', 'k');
%grid;
title('(a)','FontSize',18);
set(gca,'xtick',[0:500:6500],'FontSize',15)
set(gca, 'XTickLabel', [])
xlim([0 6500])
ylabel('Requests/s','FontSize',18) ;
f1.Position = [10 10 900 250]; 
print -depsc plot11


f2 = figure;
av = test2(501:7000,4);
av95 = test2(501:7000,3);

%slo = 2*ones(1);

plot(t,av,'-', 'color', 'r','MarkerIndices',250:1000:length(av), 'MarkerSize',8,'LineWidth',2);
hold on
plot(t,av95,'--', 'color', 'b','MarkerIndices',250:1000:6500, 'MarkerSize',8,'LineWidth',2);
hold off
hold on
%grid;
set(gca,'xtick',[0:500:6500],'FontSize',15)
set(gca, 'XTickLabel', [])
xlim([0 6500])
title('(b)','FontSize',18);
a = legend( 'Average Response Time', '95th Percentile')
ylabel('Response Time (ms)','FontSize',18) 
ylim([0 300])
set(a,'location','best')


f2.Position = [10 10 900 250]; 
print -depsc plot22

hold off



f6 = figure;
nB = history1(9:117,9);
nR = history1(9:117,10);
nk = nB + nR;
t = 1:60:6500;
plot(t,nk,'-', 'color', 'm','MarkerIndices',250:1000:6500,'MarkerSize',8,'LineWidth',2);
title('(c)','FontSize',18);
ylim([0 9])
set(gca,'xtick',[0:500:6500],'FontSize',15)
xlim([0 6500])
ylabel('# of Instances','FontSize',18) 
set(a,'location','best')

f6.Position = [10 10 900 250]; 
set(gca, 'XTickLabel', [])
print -depsc plot44



f3 = figure;
cpuB = history1(9:117,4)*100;
t = 1:60:6500;
plot(t,cpuB,'-', 'color', 'm','MarkerIndices',250:1000:6500,'MarkerSize',8,'LineWidth',2);
%grid;
set(gca,'xtick',[0:500:6500],'FontSize',15)
xlim([0 6500])
ylim([0 100])
title('(d)','FontSize',18);
ylabel('CPU Utilization (%)','FontSize',18) 
xlabel('Time (s)','FontSize',18) 
set(a,'location','best')

f3.Position = [10 10 900 250]; 
print -depsc plot55
