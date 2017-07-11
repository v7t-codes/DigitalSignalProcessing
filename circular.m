function y = circular(x,h,N)
m = 0:N-1;
for n=0:N-1;
    y(n+1) = sum(h(mod(n-m,N)+1).*x);
end
