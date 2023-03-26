%% Noises generation
Alpha=0:0.05:1;
Alpha(1)=0.01;
Alpha(21)=0.99;
mvt=Alpha+1;
Alpha=[Alpha mvt];
clear mvt
d=Alpha-0.5;

tsarf=[];
tsfgn=[];
for i=1:21
    for j=1:120
        X(:,j)=ARFIMA0d0(1024,d(i));
        Y(:,j)=cholfgn(Alpha(i),1024);
    end
    tsarf = [tsarf X];
    tsfgn = [tsfgn Y];
end
clear X Y

%% Movement generation
X=cumsum(tsarf);
tsarf=[tsarf X];
Y=cumsum(tsfgn);
tsfgn=[tsfgn Y];

%% Whittle ARFIMA and Whittle FGN 
tic
for k=1:5040
    [Aarffgn(k),Aarfarf(k)] = whittle(tsarf(:,k));
    [Afgnfgn(k),Afgnarf(k)] = whittle(tsfgn(:,k));
end

TimeWhittle = toc;

%% DFA
tic
for k=1:5040
    [Aarfdfa(k)] = DFA(tsarf(:,k));
    [Afgndfa(k)] = DFA(tsfgn(:,k));
end

TimeDFA = toc;
    