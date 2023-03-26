%% Figure 7 Squared Error Box Plot for varied length signals

%% Figure 7 Computation

% Load true Alpha vector
load('generatedsignals.mat','Alpha','tsarf')

% ARFIMA based Whittle likelihood for N=32,64,128,256 lengthes 
for k=1:5040
Alpha32(k) = whittle(tsarf(1:32,k));
Alpha64(k) = whittle(tsarf(1:64,k));
Alpha128(k) = whittle(tsarf(1:128,k));
Alpha256(k) = whittle(tsarf(1:256,k));
end

alpha32=reshape(Alpha32,[120,42]);
alpha64=reshape(Alpha64,[120,42]);
alpha128=reshape(Alpha128,[120,42]);
alpha256=reshape(Alpha256,[120,42]);

mse32=((alpha32-Alpha).^2);
mse64=((alpha64-Alpha).^2);
mse128=((alpha128-Alpha).^2);
mse256=((alpha256-Alpha).^2);

clear Alpha32 Alpha64 Alpha128 Alpha256 k


%% Figure 7 Plot
ticks=[1 3 5 7 9 11 13 15 17 19 21 22 24 26 28 30 32 34 36 38 40 42];
labels=Alpha(ticks);

figure
tiledlayout(2,2);

nexttile
boxplot(mse32,Alpha,...
    "OutlierSize",4,'Colors',[0 0.4470 0.7410],'Symbol','.k')
ylim([0 4]);
xlabel('\boldmath$\alpha$','Interpreter','latex')
xticks(ticks)
xticklabels(labels)
ylabel('\bf Squarred Error','Interpreter','latex')
title('\bf Whittle\boldmath$_{ARFIMA}$ Squared Error Box Plot \boldmath$N=32$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')

up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1,'LineStyle','-');% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1,'LineStyle','-');%Setting the lower whiskers
hold on
plot(mean(mse32),...
    'LineStyle','none', 'Marker', 'diamond', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'MarkerSize',4)
legend('RMSE','Interpreter','latex','Location','northwest')
hold off

nexttile
boxplot(mse64,Alpha,...
    "OutlierSize",4,'Colors',[0 0.4470 0.7410],'Symbol','.k')
ylim([0 0.2]);
xlabel('\boldmath$\alpha$','Interpreter','latex')
xticks(ticks)
xticklabels(labels)
ylabel('\bf Squarred Error','Interpreter','latex')
title('\bf Whittle\boldmath$_{ARFIMA}$ Squared Error Box Plot \boldmath$N=64$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')
up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1,'LineStyle','-');% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1,'LineStyle','-');%Setting the lower whiskers
hold on
plot(mean(mse64),...
    'LineStyle','none', 'Marker', 'diamond', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'MarkerSize',4)
legend('RMSE','Interpreter','latex','Location','northwest')
hold off

nexttile
boxplot(mse128,Alpha,...
    "OutlierSize",4,'Colors',[0 0.4470 0.7410],'Symbol','.k')
ylim([0 0.2]);
xlabel('\boldmath$\alpha$','Interpreter','latex')
xticks(ticks)
xticklabels(labels)
ylabel('\bf Squarred Error','Interpreter','latex')
title('\bf Whittle\boldmath$_{ARFIMA}$ Squared Error Box Plot \boldmath$N=128$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')
up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1,'LineStyle','-');% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1,'LineStyle','-');%Setting the lower whiskers
hold on
plot(mean(mse128),...
    'LineStyle','none', 'Marker', 'diamond', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'MarkerSize',4)
legend('RMSE','Interpreter','latex','Location','northwest')
hold off

nexttile
boxplot(mse256,Alpha,...
    "OutlierSize",4,'Colors',[0 0.4470 0.7410],'Symbol','.k')
ylim([0 0.2]);
xlabel('\boldmath$\alpha$','Interpreter','latex')
xticks(ticks)
xticklabels(labels)
ylabel('\bf Squarred Error','Interpreter','latex')
title('\bf Whittle\boldmath$_{ARFIMA}$ Squared Error Box Plot \boldmath$N=256$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')
up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',1,'LineStyle','-');% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',1,'LineStyle','-');%Setting the lower whiskers
hold on
plot(mean(mse256),...
    'LineStyle','none', 'Marker', 'diamond', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'MarkerSize',4)
legend('RMSE','Interpreter','latex','Location','northwest')
hold off

lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');set(lines, 'Color', 'k','linewidth',0.5);

clear lines low low_adj out up up_adj ticks labels ax

