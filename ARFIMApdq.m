function [x] = ARFIMApdq(N,p,d,q)

wgn=normrnd(0,1,N,1); 
x=zeros(1,N);
X=zeros(1,N);
Y=zeros(1,N);
infini=170;
a=zeros(1,infini);
%%
if p==0
    p=[];
else
    AR=0;
end
if q==0
    q=[];
else
    MA=0;
end

MA_ord=length(q);
AR_ord=length(p);

%% Bruit Blanc
if isempty(p) && isempty(q) && (d==0)
    x=wgn; 
    return
end 

%% Computing part: MA(q)
if MA_ord >= 1
    for t=1:N
        for j=1:MA_ord
            if t > j
                MA = MA + q(j)*wgn(t-j);
            end
        end
        X(t)= wgn(t)+ MA;
    end
else
    X=wgn;
end

clear t j

%% Computing part : d

if d == 0
    Y=X;
else
    for k=0:infini
    a(k+1)=gamma(k+d)/(gamma(k+1)*gamma(d));
    end

    for t=1:N
        for k=0:infini
            if t > k
                Y(t)= Y(t)+ a(k+1)*X(t-k);
            end
        end
    end
end
clear t k

%% Computing part: AR(p)

if AR_ord >= 1
    for t=1:N
        for l=1:AR_ord
            if t > l
                AR = AR - p(l)*x(t-l);
            end
        end
        x(t)= Y(t)+ AR;
    end
else
    x=Y;
end
clear t l


