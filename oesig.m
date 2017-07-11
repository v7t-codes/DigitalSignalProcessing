x = input('Enter the sequence :');
n = input('Indices : ');
x1 = fliplr(x);
m = -fliplr(n);
yn= min(min(m), min(n)):max(max(m), max(n));
y1 = zeros(1,length(yn));
y2 = y1;
y1(find((yn>= min(n))&(yn<= max(n))==1))=x;
y2(find((yn>= min(m))&(yn<=max(m))==1))=x1;
odd = (y1-y2)*0.5;
even = (y1 + y2)*0.5;
subplot(2,1,1)
plot(yn, odd)
subplot(2,1,2)
plot(yn, even)