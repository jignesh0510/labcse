n=6;
a=zeros(n,n);
c=zeros(n,1);

c(1)=-49.2;
c(n)=-39.8;
c(2:n-1)=0;

a=zeros(n,n);
a(1,1)=-2;
a(n,n)=-2;

for i=1:n-1
    a(i,i)=-2;
    a(i,i+1)=1;
    a(i+1,i)=1;
end

t=inv(a)*c;

plot (t)