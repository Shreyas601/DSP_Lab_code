%3
a = 1+mod(236,3);
x1 = importdata('ECG_Data.txt');
subplot(3,1,1);
plot(x1);
x2 = importdata('RainFallIndia_Jan.txt');
x3 = importdata('RainFallIndia_July.txt');
subplot(3,1,2);
histogram(x2);
subplot(3,1,3);
histogram(x3);
m2 = mean(x2);
s2 = std(x2);
m3 = mean(x3);
s3 = std(x3);
data = importdata('Track002.wav');
[y, Fs] = audioread('Track002.wav');
sound(y, Fs);