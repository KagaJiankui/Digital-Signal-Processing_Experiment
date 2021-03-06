% 功能：离散时间傅里叶变换DTFT
clear;
clc;
close all;
% ======================= input signal ==========================
N=8;
%原离散信号有8点
n=[0:1:N-1];
%原信号是1行8列的矩阵
xn=0.5.^n;
%构建原始信号，为指数信号
% ========== 求dtft变换，采用原始定义对复指数分量求和 ============
w=[-800:1:800]*4*pi/800;
%频域共-800--+800的长度
%本应是无穷，高频分量很少，故省去
martrix = w'.*n;
X = exp(-1i*(martrix))*xn';
% ======================= figure ==========================
subplot(311)
stem(n,xn);
title('原始信号(指数信号)');
subplot(312);
plot(w/pi,abs(X));
%stem(w/pi,abs(X));
title('DTFT变换')