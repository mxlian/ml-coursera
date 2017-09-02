function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
h0 =  X*theta;
J = 1/(2*m) * sum((h0 - y) .^ 2);
regularization_term = lambda/(2*m) * sum(theta(2:end).^2);
J = J + regularization_term;


grad0 = (h0 - y)' * X(:,1);
grad0 = grad0/m;

grad1 = (h0 - y)' * X(:,2) + lambda * theta(2);
grad1 = grad1/m;

grad = [grad0 grad1];









% =========================================================================

grad = grad(:);

end
