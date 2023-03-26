%% Figure 5 The whole set of alpha estimate.

%% Figure 5 Computation

% Load true Alpha vector
load('generatedsignals.mat','Alpha','Aarfarf','Aarfdfa','Aarffgn','Afgnarf','Afgndfa','Afgnfgn')

% Compute true alpha values vector
alpha=zeros(5040,1);
for i = 1:42
    for j=1:120
        alpha(j+(i-1)*120)=Alpha(i);
    end
end

%% Figure 5 Plot

tiledlayout(3,2);

nexttile
plot(Afgnfgn)
hold on
plot(alpha)
title('\bf Generator : Cholesky $\mid$ Analysis : Whittle\boldmath$_{FGN}$','Interpreter','latex')
xlabel('\boldmath$\alpha$','Interpreter','latex')
ylabel('\boldmath$\hat{\alpha}$','Interpreter','latex')
legend('$\hat{\alpha}$', '$\alpha$','Interpreter','latex','Location','northwest')
xlim([0 5040]);
ylim([0 2]);
ax = gca;
ax.TickLabelInterpreter = 'latex';
xticks([60 180 300 420 540 660 780 900 1020 1140 1260 1380 1500 1620 1740 1860 1980 2100 2220 2340 2460 2580 2700 2820 2940 3060 3180 3300 3420 3540 3660 3780 3900 4020 4140 4260 4380 4500 4620 4740 4860 4980])
xticklabels(Alpha)

nexttile
plot(Aarffgn)
hold on
plot(alpha)
title('\bf Generator : ARFIMA(0,\boldmath$d$,0) $\mid$ Analysis : Whittle\boldmath$_{FGN}$','Interpreter','latex')
xlabel('\boldmath$\alpha$','Interpreter','latex')
ylabel('\boldmath$\hat{\alpha}$','Interpreter','latex')
legend('$\hat{\alpha}$', '$\alpha$','Interpreter','latex','Location','northwest')
xlim([0 5040]);
ylim([0 2]);
ax = gca;
ax.TickLabelInterpreter = 'latex';
ax = gca;
ax.TickLabelInterpreter = 'latex';
xticks([60 180 300 420 540 660 780 900 1020 1140 1260 1380 1500 1620 1740 1860 1980 2100 2220 2340 2460 2580 2700 2820 2940 3060 3180 3300 3420 3540 3660 3780 3900 4020 4140 4260 4380 4500 4620 4740 4860 4980])
xticklabels(Alpha)

nexttile
plot(Afgnarf)
hold on
plot(alpha)
title('\bf Generator : Cholesky $\mid$ Analysis : Whittle\boldmath$_{ARFIMA}$','Interpreter','latex')
xlabel('\boldmath$\alpha$','Interpreter','latex')
ylabel('\boldmath$\hat{\alpha}$','Interpreter','latex')
legend('$\hat{\alpha}$', '$\alpha$','Interpreter','latex','Location','northwest')
xlim([0 5040]);
ylim([0 2]);
ax = gca;
ax.TickLabelInterpreter = 'latex';
xticks([60 180 300 420 540 660 780 900 1020 1140 1260 1380 1500 1620 1740 1860 1980 2100 2220 2340 2460 2580 2700 2820 2940 3060 3180 3300 3420 3540 3660 3780 3900 4020 4140 4260 4380 4500 4620 4740 4860 4980])
xticklabels(Alpha)

nexttile
plot(Aarfarf)
hold on
plot(alpha)
title('\bf Generator : ARFIMA(0,\boldmath$d$,0) $\mid$ Analysis : Whittle\boldmath$_{ARFIMA}$','Interpreter','latex')
xlabel('\boldmath$\alpha$','Interpreter','latex')
ylabel('\boldmath$\hat{\alpha}$','Interpreter','latex')
legend('$\hat{\alpha}$', '$\alpha$','Interpreter','latex','Location','northwest')
xlim([0 5040]);
ylim([0 2]);
ax = gca;
ax.TickLabelInterpreter = 'latex';
xticks([60 180 300 420 540 660 780 900 1020 1140 1260 1380 1500 1620 1740 1860 1980 2100 2220 2340 2460 2580 2700 2820 2940 3060 3180 3300 3420 3540 3660 3780 3900 4020 4140 4260 4380 4500 4620 4740 4860 4980])
xticklabels(Alpha)

nexttile
plot(Afgndfa)
hold on
plot(alpha)
title('\bf Generator : Cholesky $\mid$ Analysis : DFA','Interpreter','latex')
xlabel('\boldmath$\alpha$','Interpreter','latex')
ylabel('\boldmath$\hat{\alpha}$','Interpreter','latex')
legend('$\hat{\alpha}$', '${\alpha}$','Interpreter','latex','Location','northwest')
xlim([0 5040]);
ylim([0 2]);
ax = gca;
ax.TickLabelInterpreter = 'latex';
xticks([60 180 300 420 540 660 780 900 1020 1140 1260 1380 1500 1620 1740 1860 1980 2100 2220 2340 2460 2580 2700 2820 2940 3060 3180 3300 3420 3540 3660 3780 3900 4020 4140 4260 4380 4500 4620 4740 4860 4980])
xticklabels(Alpha)

nexttile
plot(Aarfdfa)
hold on
plot(alpha)
title('\bf Generator : ARFIMA(0,\boldmath$d$,0) $\mid$ Analysis : DFA','Interpreter','latex')
xlabel('\boldmath$\alpha$','Interpreter','latex')
ylabel('\boldmath$\hat{\alpha}$','Interpreter','latex')
legend('$\hat{\alpha}$', '$\alpha$','Interpreter','latex','Location','northwest')
xlim([0 5040]);
ylim([0 2]);
ax = gca;
ax.TickLabelInterpreter = 'latex';
xticks([60 180 300 420 540 660 780 900 1020 1140 1260 1380 1500 1620 1740 1860 1980 2100 2220 2340 2460 2580 2700 2820 2940 3060 3180 3300 3420 3540 3660 3780 3900 4020 4140 4260 4380 4500 4620 4740 4860 4980])
xticklabels(Alpha)

clear i j ax alpha