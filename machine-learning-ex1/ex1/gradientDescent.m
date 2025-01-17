function [theta, J_history] = gradientDescent(X, Y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(Y); % number of training examples
J_history = zeros(num_iters, 1);

%prediction=(X*theta);

for iter = 1:num_iters
  prediction=theta(1)+(theta(2)*X(:,2));
    temp1= theta(1)- alpha * (sum(prediction-Y)/m);
    temp2= theta(2)- alpha * sum((prediction-Y).*X(:,2))/m;
    theta(1,:)=temp1;
    theta(2,:)=temp2;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, Y, theta);

end

end
