wp=0.2;
ws=0.5;
rs=20;
rp=3;
[n,wn]= cheb1ord(wp,ws,rp,rs);
[b,a]=cheby1(n,rp,wn);
[z,p,k]=tf2zp(b,a);
[H,f]=freqz(z,p,512);
zplane(b,a);

H
f
z
p
k
n
