% Generates plots required for part 3 of the lab
plot_classes

% Map ranges:
res = 0.5;
x1 = [-5:res:20]';
y1 = [0:res:20]';
x2 = [-5:res:25]';
y2 = [-10:res:35]';

% plot_med
% plot_ged
% plot_map
NN
kNN
figure(1);
legend('Class A','Class B');
title('Classification Boundaries for Class A and B');
figure(2);
legend('Class C','Class D','Class E');
title('Classification Boundaries for Class C, D and E');