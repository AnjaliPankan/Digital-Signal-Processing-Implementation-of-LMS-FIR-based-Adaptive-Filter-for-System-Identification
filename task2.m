clear all;
close all;

% x[k] = 2  for k=0,1,…,999
% d[k] = 1, ffor k=0,1,…,999
% N = 1, 2
% mu = 0.01

len = 1000;
x=ones(len,1)*2;                  
d=ones(len,1);                    
N = 2;                            
mu = 0.01;   

%Add a random Gaussian noise component n[k] 
d = d + 1e-4*randn(length(d), 1);
                   
[y,e,w] = lms2(x, d, N, mu);

%Visualization
figure
plot([x,y,d],'LineWidth', 2);
legend('x[k]', 'y[k]', 'd[k]');
fontsize = 15;
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);
xlabel('k\rightarrow');
ylabel('x [k], y [k], d [k] \rightarrow');


% visualization of e^[k]
figure
semilogy((e.^2));
legend('e.^2');
fontsize = 15;
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);
xlabel('k \rightarrow');
ylabel('e.^2 \rightarrow');

figure 
plot(w(1,:), w(2,:), '+');
%legend('w_1[k]','w_2[k]');
fontsize = 15;
set([gca; findall(gca, 'Type','text')], 'FontSize', fontsize);
xlabel('w_1[k]');
ylabel('w_2[k]');