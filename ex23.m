function y=ex23(x,m)

x=x(:);
x=[zeros(m-1,1);x];

for mm=1:length(x)-m+1
    y(mm)=sum(x(mm:mm+m-1));
end
y=y/m;
y=y(:);
end

