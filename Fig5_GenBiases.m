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

ticks=[1 3 5 7 9 11 13 15 17 19 21 22 24 26 28 30 32 34 36 38 40 42];
labels=Alpha(ticks);

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
xticks([60	300	540	780	1020 1260 1500 1740	1980 2220 2460 2580	2820 3060 3300 3540	3780 4020 4260 4500 4740 4980])
xticklabels(labels)
axis square

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
xticks([60	300	540	780	1020 1260 1500 1740	1980 2220 2460 2580	2820 3060 3300 3540	3780 4020 4260 4500 4740 4980])
xticklabels(labels)
axis square

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
xticks([60	300	540	780	1020 1260 1500 1740	1980 2220 2460 2580	2820 3060 3300 3540	3780 4020 4260 4500 4740 4980])
xticklabels(labels)
axis square

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
xticks([60	300	540	780	1020 1260 1500 1740	1980 2220 2460 2580	2820 3060 3300 3540	3780 4020 4260 4500 4740 4980])
xticklabels(labels)
axis square

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
xticks([60	300	540	780	1020 1260 1500 1740	1980 2220 2460 2580	2820 3060 3300 3540	3780 4020 4260 4500 4740 4980])
xticklabels(labels)
axis square

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
xticks([60	300	540	780	1020 1260 1500 1740	1980 2220 2460 2580	2820 3060 3300 3540	3780 4020 4260 4500 4740 4980])
xticklabels(labels)
axis square

clear i j ax alpha ticks labels