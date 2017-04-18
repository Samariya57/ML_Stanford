function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
sz= size(z(:,1));
lz = length (z(1,:));

g = zeros(sz,lz);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

sz= size(z(:,1));
lz = length (z(1,:));

for i= 1: sz
  for j= 1 : lz
    g(i,j) = 1/(1+exp(-z(i,j)));
  endfor
endfor
% =============================================================

end
