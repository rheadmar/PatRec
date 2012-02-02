function [training, testing] = gen_class(u, S, n)
% Generates a training and testing data set for a normally distributed class.
% u - the mean for the class
% S - the covariance for the class
% n - the number of data points to generate for each of training and testing
%
% training, testing - two independent sample sets with the distribution N(u,S),
% with n elements.

m = size(S,1);
training = sqrtm(S)*randn(m, n) + diag(u)*ones(m, n);
testing = sqrtm(S)*randn(m, n) + diag(u)*ones(m, n);

