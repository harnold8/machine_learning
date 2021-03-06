function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

%X
%theta
%X(:,1)%.*(X*theta-y).^2
%(X*theta-y).^2
%X(:,1).*(X*theta-y).^2
%change1 = 1/m*sum(X(:,1).*(X*theta-y).^2)
%change2 = 1/m*sum(X(:,2).*(X*theta-y).^2)

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    change1 = 1/m*sum(X(:,1).*(X*theta-y));
    change2 = 1/m*sum(X(:,2).*(X*theta-y));
    
    theta(1) = theta(1) - alpha * change1;
    theta(2) = theta(2) - alpha * change2;




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
