  function [H] = DFA(ts)    
  %% Pr�traitement
x=zscore(ts);
if size(x,1) == 1, x=x'; end                 % Transformation en matrice colonne 
N = length (x);                                % Longueur de la s�rie
if mod(N,2) == 1, x=x(1:N-1,1); end           % Rendre ts paire
  
 %% Variables g�n�rales et pr�allocation de la matrice de fonctions de fluctuation 
N = length(x);                                   % Maj Longueur de s�rie
Fqs = zeros(1, 15); 
pl = round (logspace(log10(10), log10(N/2), 16)); % Points d�termiant les fen�tres log
S = zeros(1,15); 
for j=1:15
    S(j)=round((pl(j+1)+pl(j))/2);                % Calcul de la position des fen�tres log
end
s = 10:N/2;
f =zeros(1,length(s));

%% Calcul DFA
tsm = x - mean(x);                 % Centrage de la s�rie temporelle
Y = cumsum(tsm);                     % Somme cumul�e

for k = 1: length(s)                % Rang de l'�chelle
    Ns = floor(N/s(k));             % Nombre de "non-overlaping windows" pour l'�chelle consid�r�e
    FS = zeros(Ns,1);
    for mu = 1 : Ns                 % Rang de la fen�tre
        bs = (mu-1)*s(k) + 1;       % Point de d�part de la fen�tre
        es = bs + s(k) - 1;         % Point de fin de la fen�tre
        X = Y(bs : es)';            % Extraction de la fen�tre temporelle
        p = polyfit(bs : es, X, 1); % Fit d'un polyn�me de degr�s m
        coef = polyval(p, bs : es); % Extraction des coefficients du polyn�me
        Z = (X - coef) .^ 2;        % 1�re �tape variance redr�ss�e
        Fs = sum(Z);                % 2�me �tape variance redr�ss�e
        FS(mu,1) = 1 / s(k) * Fs;   % 3�me �tape variance redr�ss�e
    end
        f(1,k) = (sqrt((1 / Ns) * sum(FS)));
end

%% Moyennage sur les fen�tres log
for i = 1:length(S)
    Fqs(i)=mean(f(pl(i)-9:pl(i)-9));
end

%% Calcul de H
ls = log(S);                                     % Log �chelle
lFqs = log(Fqs);                                 % Log Fonctions de fluctuation                             
p = polyfit(ls, lFqs, 1);
H=p(1);  