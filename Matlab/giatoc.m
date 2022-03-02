function X_dd = giatoc(Xn)
v = zeros(1,100);
a = zeros(1,100);
Ts = 0.01;
[n,m] = size(Xn);
for i=1:m-1
    v(i+1)=(Xn(i+1)-Xn(i))/Ts;
end
for i=2:m-1
    a(i+1)=(v(i+1)-v(i))/Ts;
end
X_dd = a;
end
