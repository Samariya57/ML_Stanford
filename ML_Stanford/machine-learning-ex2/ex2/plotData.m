function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

yes_ex = find(y==1);
no_ex = find (y==0);
plot (X(yes_ex,1), X(yes_ex,2),'gx', 'MarkerSize',3);
plot (X(no_ex,1), X(no_ex,2),'rx', 'MarkerSize',3);







% =========================================================================



hold off;

end
