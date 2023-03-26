  function [H] = DFA(ts)    
  %% Prétraitement
x=zscore(ts);
if size(x,1) == 1, x=x'; end                 % Transformation en matrice colonne 
N = length (x);                                % Longueur de la série
if mod(N,2) == 1, x=x(1:N-1,1); end           % Rendre ts paire
  
 %% Variables générales et préallocation de la matrice de fonctions de fluctuation 
N = length(x);                                   % Maj Longueur de série
Fqs = zeros(1, 15); 
pl = round (logspace(log10(10), log10(N/2), 16)); % Points détermiant les fenêtres log
S = zeros(1,15); 
for j=1:15
    S(j)=round((pl(j+1)+pl(j))/2);                % Calcul de la position des fenêtres log
end
s = 10:N/2;
f =zeros(1,length(s));

%% Calcul DFA
tsm = x - mean(x);                 % Centrage de la série temporelle
Y = cumsum(tsm);                     % Somme cumulée

for k = 1: length(s)                % Rang de l'échelle
    Ns = floor(N/s(k));             % Nombre de "non-overlaping windows" pour l'échelle considérée
    FS = zeros(Ns,1);
    for mu = 1 : Ns                 % Rang de la fenêtre
        bs = (mu-1)*s(k) + 1;       % Point de départ de la fenêtre
        es = bs + s(k) - 1;         % Point de fin de la fenêtre
        X = Y(bs : es)';            % Extraction de la fenêtre temporelle
        p = polyfit(bs : es, X, 1); % Fit d'un polynôme de degrès m
        coef = polyval(p, bs : es); % Extraction des coefficients du polynôme
        Z = (X - coef) .^ 2;        % 1ère étape variance redréssée
        Fs = sum(Z);                % 2ème étape variance redréssée
        FS(mu,1) = 1 / s(k) * Fs;   % 3ème étape variance redréssée
    end
        f(1,k) = (sqrt((1 / Ns) * sum(FS)));
end

%% Moyennage sur les fenêtres log
for i = 1:length(S)
    Fqs(i)=mean(f(pl(i)-9:pl(i)-9));
end

%% Calcul de H
ls = log(S);                                     % Log échelle
lFqs = log(Fqs);                                 % Log Fonctions de fluctuation                             
p = polyfit(ls, lFqs, 1);
H=p(1);  