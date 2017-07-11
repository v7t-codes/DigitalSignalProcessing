x = input('Enter the sequence x');
n = input('Index of the sequence');
a = input('The scaling factor');
y = a*x;
subplot(2,1,2)
plot(n,y)
subplot(2,1,1)
plot(n,x)