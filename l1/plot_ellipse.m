function plot_ellipse(u, S, style)
% Plots a single standard deviation ellipse for the given class statistics
% u - class mean
% S - class covariance
% style - plot style

np = 100;
th = linspace(0,2*pi,np);
x = sqrtm(S)*[cos(th); sin(th)] + diag(u)*ones(2,np);
plot(x(1,:), x(2,:), style);

