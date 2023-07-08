%% Figure 4 : Whittle log-likelihood functions for choleskyfgn, arfima0d0, whitenoise, and empirical signals. 

%% Figure 4 Computation 

% Retrieve Figure 1 variables
run Fig1_PSD.m
close

% Compute Whittle log-likelihood functions
N=1024;
H=0.05:0.05:0.95;
d=H-0.5;

    %choleskyfGn signal
    for i=1:length(H)
    Tp(:,i)=sin(pi*H(i))*gamma((2*H(i))+1)*(abs(w).^(1-(2*H(i))));
    c(i)=sum(Pcho)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHchofgn(:,i)=(2/N)*sum(log(T(:,i))+(Pcho./T(:,i)));
    end
    clear Tp c T
    
    for i=1:length(H)
    Tp(:,i)=(1/(2*pi))*(2*sin(w/2)).^-(2*d(i));
    c(i)=sum(Pcho)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHchoarf(:,i)=(2/N)*sum(log(T(:,i))+(Pcho./T(:,i)));
    end
    clear Tp c T
    
    %arfima0d0 signal
    for i=1:length(H)
    Tp(:,i)=sin(pi*H(i))*gamma((2*H(i))+1)*(abs(w).^(1-(2*H(i))));
    c(i)=sum(Parf)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHarffgn(:,i)=(2/N)*sum(log(T(:,i))+(Parf./T(:,i)));
    end
    clear Tp c T
    
    for i=1:length(H)
    Tp(:,i)=(1/(2*pi))*(2*sin(w/2)).^-(2*d(i));
    c(i)=sum(Parf)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHarfarf(:,i)=(2/N)*sum(log(T(:,i))+(Parf./T(:,i)));
    end
    clear Tp c T
    
    %whitenoise signal
    for i=1:length(H)
    Tp(:,i)=sin(pi*H(i))*gamma((2*H(i))+1)*(abs(w).^(1-(2*H(i))));
    c(i)=sum(Pwhi)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHwhifgn(:,i)=(2/N)*sum(log(T(:,i))+(Pwhi./T(:,i)));
    end
    clear Tp c T
    
    for i=1:length(H)
    Tp(:,i)=(1/(2*pi))*(2*sin(w/2)).^-(2*d(i));
    c(i)=sum(Pwhi)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHwhiarf(:,i)=(2/N)*sum(log(T(:,i))+(Pwhi./T(:,i)));
    end
    clear Tp c T
    
    %empirical signal
    for i=1:length(H)
    Tp(:,i)=sin(pi*H(i))*gamma((2*H(i))+1)*(abs(w).^(1-(2*H(i))));
    c(i)=sum(Pemp)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHempfgn(:,i)=(2/N)*sum(log(T(:,i))+(Pemp./T(:,i)));
    end
    clear Tp c T
    
    for i=1:length(H)
    Tp(:,i)=(1/(2*pi))*(2*sin(w/2)).^-(2*d(i));
    c(i)=sum(Pemp)/sum(Tp(:,i));
    T(:,i)=c(i)*Tp(:,i);
    lwHemparf(:,i)=(2/N)*sum(log(T(:,i))+(Pemp./T(:,i)));
    end
    clear Tp c T

%% Figure 4 Plot 

tiledlayout(2,2)

nexttile
plot(H,lwHchofgn)
hold on
plot(H,lwHchoarf)
hold off
title('\bf choleskyfgn','Interpreter','latex')
xlabel('\boldmath$H$','Interpreter','latex')
xlim([0 1]);
ylabel('\boldmath$\ell_{w}(H)$','Interpreter','latex')
ylim([min(lwHchoarf) max(lwHchoarf)]);
legend('$\ell_{w}(H)_{fGn}$','$\ell_{w}(H)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
axis square

nexttile
plot(H,lwHarffgn)
hold on
plot(H,lwHarfarf)
hold off
title('\bf arfima0d0','Interpreter','latex')
xlabel('\boldmath$H$','Interpreter','latex')
xlim([0 1]);
ylabel('\boldmath$\ell_{w}(H)$','Interpreter','latex')
ylim([min(lwHarfarf) max(lwHarfarf)]);
legend('$\ell_{w}(H)_{fGn}$','$\ell_{w}(H)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
axis square

nexttile
plot(H,lwHwhifgn)
hold on
plot(H,lwHwhiarf)
hold off
title('\bf whitenoise','Interpreter','latex')
xlabel('\boldmath$H$','Interpreter','latex')
xlim([0 1]);
ylabel('\boldmath$\ell_{w}(H)$','Interpreter','latex')
ylim([min(lwHwhiarf) max(lwHwhiarf)]);
legend('$\ell_{w}(H)_{fGn}$','$\ell_{w}(H)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
axis square

nexttile
plot(H,lwHempfgn)
hold on
plot(H,lwHemparf)
hold off
title('\bf empirical','Interpreter','latex')
xlabel('\boldmath$H$','Interpreter','latex')
xlim([0 1]);
ylabel('\boldmath$\ell_{w}(H)$','Interpreter','latex')
ylim([min(lwHemparf) max(lwHemparf)]);
legend('$\ell_{w}(H)_{fGn}$','$\ell_{w}(H)_{ARFIMA}$','Interpreter','latex')
ax = gca;
ax.TickLabelInterpreter = 'latex';
axis square

clear ax