% now for some digital filter action
fs=8000;
fn=4000 ;
wp=500/fn;
ws=2000/fn;
rp=2;
rs=20;
%n= order and wn is the cutoff freq
[n,wn]=buttord(wp,ws,rp,rs);
disp('order of the filter:');n
[b,a]= butter(n, wn);
disp('the coefficients of the filter are:');
b 
a
[z,p,k]= tf2zp(b,a);
disp('zeros and poles');
z
p 
k
[H,f]= freqz(b,a,512);
plot(f,20*log10(abs(H)));
grid on;


