%% Figure 1 : Periodogram PSD estimate for choleskyfgn, arfima0d0, whitenoise, and empirical signals

%% Figure 1 Computation

% Loading signals and compute general variables
load fractalsignals.mat
N=1024;
m=floor((N-1)/2);
w=(2*pi*(1:m)')/N;

% choleskyfgn periodogram
Pcho=periodogram(zscore(choleskyfgn));
Pcho=Pcho((2:m+1));

% arfima0d0 periodogram
Parf=periodogram(zscore(arfima0d0));
Parf=Parf((2:m+1));

% arfima0d0 periodogram
Pwhi=periodogram(zscore(whitenoise));
Pwhi=Pwhi((2:m+1));

% empirical periodogram
Pemp= periodogram(zscore(empirical));
Pemp=Pemp((2:m+1));

clear N m

%% Figure 1 Plot

tiledlayout(2,2)

nexttile
plot(w,Pcho)
title('\bf choleskyfgn','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j})$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square

nexttile
plot(w,Parf)
title('\bf arfima0d0','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j})$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square

nexttile
plot(w,Pwhi)
title('\bf whitenoise','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j})$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square

nexttile
plot(w,Pemp)
title('\bf empirical','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j})$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square

clear ax
