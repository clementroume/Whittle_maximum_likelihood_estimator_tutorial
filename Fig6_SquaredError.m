%% Figure 6 Box Plot of Squared Error.

%% Figure 6 Computation

% Loading signal
load('generatedsignals.mat','Alpha','Aarfarf','Aarffgn','Aarfdfa')


% Reshape Alpha Arrays
aarfarf= reshape(Aarfarf,[120,42]);
aarffgn= reshape(Aarffgn,[120,42]);
aarfdfa= reshape(Aarfdfa,[120,42]);

% Compute Squared Error
msearf=((aarfarf-Alpha).^2);
msefgn=((aarffgn-Alpha).^2);
msedfa=((aarfdfa-Alpha).^2);
meanmsearf=mean(msearf);
meanmsefgn=mean(msefgn);
meanmsedfa=mean(msedfa);

clear aarfarf aarffgn aarfdfa Aarfarf Aarffgn Aarfdfa

%% Figure 6 Plot
ticks=[1 3 5 7 9 11 13 15 17 19 21 22 24 26 28 30 32 34 36 38 40 42];
labels=Alpha(ticks);

tiledlayout(1,3);

nexttile
boxplot(msefgn,Alpha,...
    "OutlierSize",4,'Colors',[0 0.4470 0.7410],'Symbol','.k')
ylim([0 0.12]);
xlabel('\boldmath$\alpha$','Interpreter','latex')
xticks(ticks)
xticklabels(labels)
ylabel('\bf Squarred Error','Interpreter','latex')
title('\bf Whittle\boldmath$_{FGN}$ Squared Error Box Plot','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',0.5,'LineStyle','-');% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',0.5,'LineStyle','-');%Setting the lower whiskers
up = findobj(gca,'type', 'line', 'tag', 'Upper Adjacent Value'); set(up, 'Color', 'k','linewidth',0.5);
low= findobj(gca, 'type', 'line','tag', 'Lower Adjacent Value'); set(low, 'Color', 'k','linewidth',0.5);
hold on
plot(meanmsefgn,...
    'LineStyle','none', 'Marker', 'diamond', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'MarkerSize',4)
legend('Mean Squared Error','Interpreter','latex','Location','northwest')
hold off

nexttile
boxplot(msearf,Alpha,...
    "OutlierSize",4,'Colors',[0 0.4470 0.7410],'Symbol','.k')
ylim([0 0.12]);
xlabel('\boldmath$\alpha$','Interpreter','latex')
xticks(ticks)
xticklabels(labels)
ylabel('\bf Squared Error','Interpreter','latex')
title('\bf Whittle\boldmath$_{ARFIMA}$ Squared Error Box Plot','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',0.5,'LineStyle','-');% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',0.5,'LineStyle','-');%Setting the lower whiskers
up = findobj(gca,'type', 'line', 'tag', 'Upper Adjacent Value'); set(up, 'Color', 'k','linewidth',0.5);
low= findobj(gca, 'type', 'line','tag', 'Lower Adjacent Value'); set(low, 'Color', 'k','linewidth',0.5);
hold on
plot(meanmsearf,...
    'LineStyle','none', 'Marker', 'diamond', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'MarkerSize',4)
legend('Mean Squared Error','Interpreter','latex','Location','northwest')
hold off

nexttile
boxplot(msedfa,Alpha,...
    "OutlierSize",4,'Colors',[0 0.4470 0.7410],'Symbol','.k')
ylim([0 0.12]);
xlabel('\boldmath$\alpha$','Interpreter','latex')
xticks(ticks)
xticklabels(labels)
ylabel('\bf Squared Error','Interpreter','latex')
title('\bf DFA Squared Error Box Plot','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
up_adj = findobj(gca,'type', 'line', 'tag', 'Upper Whisker'); set(up_adj, 'Color', 'k','linewidth',0.5,'LineStyle','-');% Setting the upper whiskers
low_adj= findobj(gca, 'type', 'line','tag', 'Lower Whisker'); set(low_adj, 'Color', 'k','linewidth',0.5,'LineStyle','-');%Setting the lower whiskers
up = findobj(gca,'type', 'line', 'tag', 'Upper Adjacent Value'); set(up, 'Color', 'k','linewidth',0.5);
low= findobj(gca, 'type', 'line','tag', 'Lower Adjacent Value'); set(low, 'Color', 'k','linewidth',0.5);
out = findobj(gca,'tag','Outliers'); set(out,'Color',[0.9290 0.6940 0.1250]);
hold on
plot(meanmsedfa,...
    'LineStyle','none', 'Marker', 'diamond', 'MarkerEdgeColor', [0.8500 0.3250 0.0980], 'MarkerSize',4)
legend('Mean Squared Error','Interpreter','latex','Location','northwest')
hold off

lines = findobj(gcf, 'type', 'line', 'Tag', 'Median');set(lines, 'Color', 'k','linewidth',0.5);


clear lines low low_adj out up up_adj ticks labels ax

