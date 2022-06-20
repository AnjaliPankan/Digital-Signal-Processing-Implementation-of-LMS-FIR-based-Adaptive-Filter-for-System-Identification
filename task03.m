clc;
clear all:
close all;

load 13_task3_x_d.mat
N=4;
mu= 0.01;

[y,e,w_mat] = lms2(x, d, N, mu);
h = w_mat(:,end);

figure
semilogy(e.^2),
fontsize = 15;
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);
xlabel('k \rightarrow');
ylabel('e.^2 \rightarrow');
