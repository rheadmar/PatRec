function c = map(x, varargin)
% Classifies the feature x
% c = map(x, n1, mu1, S1, n2, mu2, S2, ...)
p = [];
for i = 1:length(varargin)/3
  p(i) = varargin{i*3-2}*mvnpdf(x, varargin{i*3-1}, varargin{i*3});
end
[m, c] = max(p);
