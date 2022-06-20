function y = lms1(x, d, N, mu)
  iter = length(x);
  w = 0;
  y = zeros(iter,1);
for i = 1:iter
  % output signal
  y(i) = w * x(i); 
  % calculate the error
  e = d(i) - y(i);
  % update the fiter coefficients
  w = w + mu * e * x(i)
  
% y = lms1(x, d, N, mu)
% Adaptive transversal filter using LMS
% INPUT
% x : column vector containing the samples of the input signal x[k]
% size(x) = [xlen,1] 
% d : column vector containing the samples of the desired output 
% signal d[k]
% size(d) = [xlen,1] 
% N : number of coefficients
% mu : step-size parameter
% OUTPUT
% y : column vector containing the samples of the output signal y[k]
% size(y) = [xlen,1]
end;