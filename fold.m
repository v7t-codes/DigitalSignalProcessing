x = input('Enter the sequence > ');
n = input('Index of the sequence > ');
y = fliplr(x);
m = -fliplr(n);
subplot(3,1,1);
plot(n,x)
subplot(3,1,2);
plot(m, y)
subplot(3,1,3);
plot(m,x)