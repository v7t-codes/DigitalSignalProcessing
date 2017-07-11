x= input('seq');
nx= input('index');
h= input('seq');
nh = input('index');
N = length(nx)+length(nh)-1;
x = [x zeros(1,N-length(nx))];
h = [h zeros(1,N-length(nh))];
ny =min(nx)+min(nh):max(nx)+max(nh);
y = circular(x,h,N);
stem(ny,y)