function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha


% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
summ=zeros(size(theta),1);
for iter = 1:num_iters
    for i = 1:size(theta);
       D=(X*theta)-y;
       C=D .* X(:,i);
       summ(i,1)=sum(C);
    end
    gradient=summ;
    theta=theta-((alpha*gradient)/m);
    J_history(iter) = computeCostMulti(X, y, theta);



    

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %











    % ============================================================

    % Save the cost J in every iteration    
    

end

end
