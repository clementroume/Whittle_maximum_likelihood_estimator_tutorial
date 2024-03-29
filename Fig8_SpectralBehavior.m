%% Figure 8 Spectral Behavior of rearranged Hausdorff data plus ARFIMA(2,-0.35,1) 

%% Figure 8 Computation

load spectralbehavior.mat

%Generate ARFIMA (2,-0.35,1) signal
%x = ARFIMApdq(1024,[0.6 0.3],-0.35,1.35)

%% Figure 8 Plot
tiledlayout(1,4)

nexttile
plot(wl,zscore(pppl),'LineWidth',0.2)
ylim([-6.5 4])
xlim([wl(1) wl(1022)])
xlabel('\boldmath$\log(\omega_{j})$','Interpreter','latex')
ylabel('\boldmath$\log(P(\omega_{j}))$','Interpreter','latex')
title('Persitent behavior','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')

nexttile
plot(wl,zscore(pmml),'LineWidth',0.2)
ylim([-6.5 4])
xlim([wl(1) wl(1022)])
xlabel('\boldmath$\log(\omega_{j})$','Interpreter','latex')
ylabel('\boldmath$\log(P(\omega_{j}))$','Interpreter','latex')
title('Anti-persitent behavior','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')

nexttile
plot(wl,zscore(pmpl),'LineWidth',0.2)
ylim([-6.5 4])
xlim([wl(1) wl(1022)])
xlabel('\boldmath$\log(\omega_{j})$','Interpreter','latex')
ylabel('\boldmath$\log(P(\omega_{j}))$','Interpreter','latex')
title('Mixed behavior',Interpreter='latex')
set(gca,'TickLabelInterpreter','latex')

nexttile
plot(wl,zscore(partificial),'LineWidth',0.2)
ylim([-6.5 4])
xlim([wl(1) wl(1022)])
xlabel('\boldmath$\log(\omega_{j})$','Interpreter','latex')
ylabel('\boldmath$\log(P(\omega_{j}))$','Interpreter','latex')
title('ARFIMA$(2,-0.35,1)$','Interpreter','latex')
set(gca,'TickLabelInterpreter','latex')
