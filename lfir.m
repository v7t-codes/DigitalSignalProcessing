fs= 4000;
fp= 2000;
fs= 20000;
fn = fs/2;
fc= (fs-fp)/2/fn;
tw= abs(fs-fp)/fs;
N= ceil(4/tw);
if(rem(N,2)==0)
    N=N+1;
end
wn= hanning(N);
hd = fir1(N-1,fc,boxcar(N));
hn= fir1(N-1,fc,wn);
[H,f]= freqz(hd,1, 512,fs);
mag = 20*log10(abs(H));
plot(f, mag), grid on;