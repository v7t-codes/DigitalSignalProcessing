%convolution with an impulse signal
t=-5:0.01:5;
h=t==2;
x=(t>0)&(t<3);
y= convn(x,h);
t1=2*min(t):0.01:2*max(t);
plot(t1,y)
