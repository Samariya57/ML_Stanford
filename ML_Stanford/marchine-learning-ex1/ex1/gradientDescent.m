function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
theta_loc=zeros(2,1);
for iter = 1:num_iters
  theta_loc(1) = theta(1) - (alpha/m)*(sum(X*theta-y));
  theta_loc(2) = theta(2) - (alpha/m)*(sum((X*theta-y)'*X(:,2)));
  %Ti1=0;
  %Ti2=0;
  %for i=1:m
   % Ti1=Ti1+theta(1)*X(i,1)+theta(2)*X(i,2)-y(i);
    %Ti2=Ti2+(theta(1)*X(i,1)+theta(2)*X(i,2)-y(i))*X(i,2);
  %end
  %theta_loc(1) = theta(1) - (alpha/m)*Ti1;
  %theta_loc(2) = theta(2) - (alpha/m)*Ti2;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    theta=theta_loc;






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %fprintf("J=%d\n",J_history(iter));
end

end
