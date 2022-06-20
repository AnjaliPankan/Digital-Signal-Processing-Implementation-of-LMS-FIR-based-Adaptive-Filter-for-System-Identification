function [y,e,w] = lms2(x, d, N, mu)
  iter = length(x);
  y = zeros(iter,1);
  e = zeros(iter, 1);
  w = zeros(N, iter+1);

  
  for i = 1:iter
    
    y(i) = w(i) * x(i);
    
    e(i) = d(i) - y(i);
    
    w(i+1) = w(i) + mu* e(i)*x(i);
  endfor


end