clear all;
close all;

% x[k] = 2  for k=0,1,…,999
% d[k] = 1, ffor k=0,1,…,999
% N = 1
% mu = = 0.01, 0.1, 0.5

len = 1000;
x = ones(len,1)*2;             % column vector of length N
d = ones(len,1); 
N = 1;
mu = 0.01;
%mu = 0.1
%mu = 0.5

y = lms1(x,d,N,mu);

figure
plot([x,y,d], 'LineWidth', 2);
legend('x[k]', 'y[k]', 'd[k]');
fontsize = 15;
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);
xlabel('k\rightarrow');
ylabel('x [k], y [k], d [k] \rightarrow');

