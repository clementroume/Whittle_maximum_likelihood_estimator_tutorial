function [x] = ARFIMA0d0(N,d)

wgn=normrnd(0,1,N,1); 
x=zeros(1,N); 
infini=170;
a=zeros(1,infini);

if d == 0
    x=wgn;
else
    for j=0:infini
    a(j+1)=gamma(j+d)/(gamma(j+1)*gamma(d));
    end

    for t=1:N
        x(t)=0;
        for j=0:infini
            if t > j
                x(t)= x(t)+ a(j+1)*wgn(t-j);
            end
        end
    end
end

end
