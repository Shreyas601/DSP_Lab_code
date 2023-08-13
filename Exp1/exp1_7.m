a = 1+mod(236,3);
data1 = importdata('Track002.wav');
[f1,Fs1] = audioread('Track002.wav');
f2 = importdata('ConvFile2.txt');
y = conv(f1, f2);
y_normalized = y/(max(abs(y)));
audiowrite("filter.wav",y_normalized,Fs1);%high pass filter(rain drops more dominant)