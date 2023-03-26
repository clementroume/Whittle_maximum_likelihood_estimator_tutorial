%% Figure 3: Periodogram for choleskyfgn, arfima0d0, whitenoise, and empirical signals belonging with the adjusted theoretical power spectral density of fGn and ARFIMA (0,d,0).

%% Figure 3 Computation

% Retrieve Figure 2 variables
run Fig2_TPSD.m
close

% Adjustment of theoretical PSD

    % Adjusted choleskyfgn theoretical periodogram
    cchofgn=sum(Pcho)/sum(Tpchofgn);
    Tchofgn=cchofgn*Tpchofgn;
    cchoarf=sum(Pcho)/sum(Tpchoarf);
    Tchoarf=cchoarf*Tpchoarf;
    
    % Adjusted arfima0d0 theoretical periodogram
    carffgn=sum(Parf)/sum(Tparffgn);
    Tarffgn=carffgn*Tparffgn;
    carfarf=sum(Parf)/sum(Tparfarf);
    Tarfarf=carfarf*Tparfarf;
    
    % Adjusted whitenoise theoretical periodogram
    cwhifgn=sum(Pwhi)/sum(Tpwhifgn);
    Twhifgn=cwhifgn*Tpwhifgn;
    cwhiarf=sum(Pwhi)/sum(Tpwhiarf);
    Twhiarf=cwhiarf*Tpwhiarf;
    
    % Adjusted empirical theoretical periodogram
    cempfgn=sum(Pemp)/sum(Tpempfgn);
    Tempfgn=cempfgn*Tpempfgn;
    cemparf=sum(Pemp)/sum(Tpemparf);
    Temparf=cemparf*Tpemparf;


% Retrieve Figure 1 plot
run Fig1_PSD.m

%% Figure 3 Plot

nexttile(1)
hold on
plot(w,Tchofgn)
plot(w,Tchoarf)
hold off
title('\bf choleskyfgn','Interpreter','latex')
xlabel('\boldmath$\omega$','Interpreter','latex')
ylabel('\boldmath$P(\omega)$','Interpreter','latex')
legend('$P(\omega)$', '$T(\omega;0.8000)_{fGn}$','$T(\omega;0.3239)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([w(1) pi/4 pi/2 3*pi/4 w(511)])
xticklabels({'$2\pi/N$','$\pi/4$','$\pi/2$','$3\pi/4$','$2\pi m/N$'})

nexttile(2)
hold on
plot(w,Tarffgn)
plot(w,Tarfarf)
hold off
title('\bf arfima0d0','Interpreter','latex')
xlabel('\boldmath$\omega$','Interpreter','latex')
ylabel('\boldmath$P(\omega)$','Interpreter','latex')
legend('$P(\omega)$', '$T(\omega;0.7804)_{fGn}$','$T(\omega;0.3089)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([w(1) pi/4 pi/2 3*pi/4 w(511)])
xticklabels({'$2\pi/N$','$\pi/4$','$\pi/2$','$3\pi/4$','$2\pi m/N$'})

nexttile(3)
hold on
plot(w,Twhifgn)
plot(w,Twhiarf)
hold off
title('\bf whitenoise','Interpreter','latex')
xlabel('\boldmath$\omega$','Interpreter','latex')
ylabel('\boldmath$P(\omega)$','Interpreter','latex')
legend('$P(\omega)$', '$T(\omega;0.5093)_{fGn}$','$T(\omega;0.0096)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([w(1) pi/4 pi/2 3*pi/4 w(511)])
xticklabels({'$2\pi/N$','$\pi/4$','$\pi/2$','$3\pi/4$','$2\pi m/N$'})

nexttile(4)
hold on
plot(w,Tempfgn)
plot(w,Temparf)
hold off
title('\bf empirical','Interpreter','latex')
xlabel('\boldmath$\omega$','Interpreter','latex')
ylabel('\boldmath$P(\omega)$','Interpreter','latex')
legend('$P(\omega)$', '$T(\omega;0.7457)_{fGn}$','$T(\omega;0.2805)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([w(1) pi/4 pi/2 3*pi/4 w(511)])
xticklabels({'$2\pi/N$','$\pi/4$','$\pi/2$','$3\pi/4$','$2\pi m/N$'})

clear ax