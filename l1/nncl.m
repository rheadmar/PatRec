function c = nncl(x, C, varargin)
% Classifies the feature vector x
% c = ged(x, C, S1, S2, S3...)
d = [];
for i = 1:length(varargin)
    d(i) = NNc(varargin{i},x',C);
end
[m, c] = min(d);