function [Afgn,Aarf] = whittle(x)
%% Matlab code 1: Periodogram estimation
X=zscore(x);
N=length(X);
m=floor((N-1)/2);
[Pxx,wxx]= periodogram(X);
P=Pxx((2:m+1));
w=wxx((2:m+1));

%% Matlab code 8: Optimization for fGn based Whittle log-likelihood function
Afgn = fminbnd(@(H) WLLFfgn(H,w,P,N),0,1);
%% Matlab code 10: If the observation vector is non-stationary, fGn based Whittle likelihood 
if Afgn >= 0.9998
    [Pyy,wyy]= periodogram(diff(X));
    mdiff=floor((N-2)/2);
    Pdiff=Pyy((2:mdiff+1)); 
    wdiff=wyy((2:mdiff+1));
    Afgn = fminbnd(@(H) WLLFfgn(H,wdiff,Pdiff,(N-1)),0,1)+1;
end

%% Matlab code 9: Optimization for ARFIMA(0,d,0) based Whittle log-likelihood function 
Aarf = fminbnd(@(H) WLLFarf(H,w,P,N),0,1);
%% Matlab code 11: If the observation vector is non-stationary, ARFIMA based Whittle likelihood 
if Aarf >= 0.9998
    [Pyy,wyy]= periodogram(diff(X));
    mdiff=floor((N-2)/2);
    Pdiff=Pyy((2:mdiff+1));
    wdiff=wyy((2:mdiff+1));
    Aarf = fminbnd(@(H) WLLFarf(H,wdiff,Pdiff,(N-1)),0,1)+1;
end
%% Matlab code 6: Whittle log-likelihood Matlab function with fGn theoretical PSD
function lwHfgn = WLLFfgn(H,w,P,N)
Tp=sin(pi*H)*gamma((2*H)+1)*(abs(w).^(1-(2*H)));
c=sum(P)/sum(Tp);
T=c*Tp ;
lwHfgn=(2/N)*sum(log(T)+(P./T));

%% Matlab code 7: Whittle log-likelihood Matlab function with ARFIMA(0,d,0) theoretical PSD
function lwHarf = WLLFarf(H,w,P,N)
d=H-0.5;
Tp=(1/(2*pi))*(2*sin(w/2)).^-(2*d);
c=sum(P)/sum(Tp);
T=c*Tp ;
lwHarf=(2/N)*sum(log(T)+(P./T));

