function [x] = cholfgn(H,n)
%% Variables :
%H : Dimension fractale
%n : Longueur des séries

%Vecteur de bruit blanc:
Wgn=normrnd(0,1,[n,1]);
% Matrice de covariance d'un fGn d'indice H
Covmat=zeros(n);
for i=1:n
    for j=1:n
        Covmat(i,j)=((1/2)*((abs(i-j+1).^(2*H))-2.*(abs(i-j).^(2*H))+(abs(i-j-1).^(2*H))));
    end
end
% Cholesky decomposition
L=chol(Covmat,'lower');
% the random vector
x=L*Wgn;