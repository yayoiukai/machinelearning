function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%lambda=1

thetaone=theta(1);
l=length(theta);
thetarest=[theta(2:l)];

%yone=y(1);
%Xione=X(1,:)
%Xjone=X(:,1)
%yrest=y([2:m]);
%Xrest=X([2:m],[2:l]);
%Xjrest=Xrest(:,1);

newtheta=[0;thetarest]



first=log(sigmoid(X*theta));
second=log(1.-sigmoid(X*theta));

%thetaone
%sigmoid(thetaone*Xjone)

step1=X'*sigmoid(X*theta)
step2=X'*y
%grad=(1/m).*(step1-step2)

%step1one=Xjone'*sigmoid(Xjone*thetaone)
%step1rest=X'*sigmoid(X*newtheta)


%step2one=Xjone'*y
%step2rest=X'*y

%theta
%theta = zeros(size(X, 2), 1);

%gradone=(1/m).*(step1one-step2one)


J=(1/m).*(-y'*first-(1.-y)'*second)+(lambda*thetarest'*thetarest)/(2*m)

grad=(1/m).*(step1-step2)+(lambda/m).*newtheta;


%grad=[gradone;gradrest(2:l)]



% =============================================================

end
