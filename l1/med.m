function c = med(x, varargin)
% Classifies the feature vector x
% c = ged(x, mu1, S1, mu2, S2, ...)
d = [];
for i = 1:length(varargin)/2
    d(i) = (x-varargin{2*i-1})' * (x-varargin{2*i-1});
end
[m, c] = min(d);
