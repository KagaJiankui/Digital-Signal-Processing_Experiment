clear;
a=3/10;
num0=[1 1];
num=a*num0; %设定函数的分子向量
den = [1 -0.4];  %设定函数的分母向量
figure;
freqz(num,den,'whole');