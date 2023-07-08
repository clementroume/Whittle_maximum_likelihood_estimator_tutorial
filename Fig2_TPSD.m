%% Figure 2: Periodogram for choleskyfgn, arfima0d0, whitenoise, and empirical signals belonging with the theoretical power spectral density of fGn and ARFIMA (0,d,0).

%% Figure 2 Computation

% Retrieve Figure 1 plot

 run Fig1_PSD.m

% Estimate H for choleskyfgn, arfima0d0, whitenoise, and empirical signals

[Hchofgn,Hchoarf] = whittle(choleskyfgn);
[Harffgn,Harfarf] = whittle(arfima0d0);
[Hwhifgn,Hwhiarf] = whittle(whitenoise);
[Hempfgn,Hemparf] = whittle(empirical);

% Calculate Theoretical PSD
    % choleskyfgn theoretical periodogram
    Tpchofgn=sin(pi*Hchofgn)*gamma((2*Hchofgn)+1)*(abs(w).^(1-(2*Hchofgn)));
    Tpchoarf=(1/(2*pi))*(2*sin(w/2)).^-(2*(Hchoarf-0.5));

    % arfima0d0 theoretical periodogram
    Tparffgn=sin(pi*Harffgn)*gamma((2*Harffgn)+1)*(abs(w).^(1-(2*Harffgn)));
    Tparfarf=(1/(2*pi))*(2*sin(w/2)).^-(2*(Harfarf-0.5));

    % whitenoise theoretical periodogram
    Tpwhifgn=sin(pi*Hwhifgn)*gamma((2*Hwhifgn)+1)*(abs(w).^(1-(2*Hwhifgn)));
    Tpwhiarf=(1/(2*pi))*(2*sin(w/2)).^-(2*(Hwhiarf-0.5));

    % empirical theoretical periodogram
    Tpempfgn=sin(pi*Hempfgn)*gamma((2*Hempfgn)+1)*(abs(w).^(1-(2*Hempfgn)));
    Tpemparf=(1/(2*pi))*(2*sin(w/2)).^-(2*(Hemparf-0.5));

 %% Figure 2 Plot

nexttile(1)
hold on
plot(w,Tpchofgn)
plot(w,Tpchoarf)
hold off
title('\bf choleskyfgn','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j})$', '$T^{\prime}(\omega_{j};0.8000)_{fGn}$','$T^{\prime}(\omega_{j};0.3239)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square

nexttile(2)
hold on
plot(w,Tparffgn)
plot(w,Tparfarf)
hold off
title('\bf arfima0d0','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j})$', '$T^{\prime}(\omega_{j};0.7804)_{fGn}$','$T^{\prime}(\omega_{j};0.3089)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square


nexttile(3)
hold on
plot(w,Tpwhifgn)
plot(w,Tpwhiarf)
hold off
title('\bf whitenoise','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j}$', '$T^{\prime}(\omega_{j};0.5093)_{fGn}$','$T^{\prime}(\omega_{j};0.0096)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square

nexttile(4)
hold on
plot(w,Tpempfgn)
plot(w,Tpemparf)
hold off
title('\bf empirical','Interpreter','latex')
xlabel('\boldmath$\omega_{j}$','Interpreter','latex')
ylabel('\boldmath$P(\omega_{j})$','Interpreter','latex')
legend('$P(\omega_{j})$', '$T^{\prime}(\omega_{j};0.7457)_{fGn}$','$T^{\prime}(\omega_{j};0.2805)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
xlim([0 pi]);
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'$0$','$\pi/4$','$\pi/2$','$3\pi/4$','$\pi$'})
axis square

clear ax
