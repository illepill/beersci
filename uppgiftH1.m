
k = 0.1;

T = 10;

u0 = 1;

t = 0:k:T;

N = T/k;

u = zeros(1,N+1);

u(1) = 1;

for i=1:N
    f = u(i) +k*FP(t(i),u(i));
    u(i+1) = fzero(@(un1) func(un1,u(i),k,t(i+1)), f);
end

plot(t,u)