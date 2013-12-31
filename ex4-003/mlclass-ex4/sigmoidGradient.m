function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).


total=0;

[l,m]=size(z);
total=zeros(l,m);
sig=sigmoid(z);
for i=1:l
	for j=1:m
		total(i,j)=sig(i,j)^2;
	endfor
endfor 



g=sig-total;








% =============================================================




end
