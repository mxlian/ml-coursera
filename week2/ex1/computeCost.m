function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% I'll use matrix operations
% First I calculate the the Y value with the current adjust curve
% WRONG: This is recursive work: Y0 = X .* theta(2) + theta(1)
% Using matrix algebra to solve it 
Y0 = X * theta;
% Then calculate the cuadratic diferences with the expecte value
DIFF = (Y0 - y).^2;
% Add the differences and devide by twice the sample count
J =  sum(DIFF)/(2*m);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
