x= input('seq');
nx = input('index');
h= input('impulseRESPONSE');
nh = input('index');
n= min(nx)+min(nh):max(nx)+max(nh);
y= conv(x,h);
disp('convolved seq');y
disp('index:');n
subplot(311);
stem(nx,x);
subplot(312);
stem(nh, h);
subplot(313);
stem(n,y);