% Computes GED classification maps from class data
res = 0.5;

% Map classifications for classes A and B
x1 = [-5:res:20]';
y1 = [0:res:20]';
c1 = zeros(length(x1),length(y1));
for i = 1:length(x1)
  for j = 1:length(y1)
    c1(i,j) = ged([x1(i);y1(j)], u_A, S_A, u_B, S_B);
  end
end
% Add the class boundary to figure 1
figure(1);
hold on
contour(x1,y1,c1',[1.5],'k');
hold off

% Map classifications for classes C, D, and E
x2 = [-5:res:25]';
y2 = [-10:res:35]';
c2 = zeros(length(x2), length(y2));
for i = 1:length(x2)
  for j = 1:length(y2)
    c2(i,j) = ged([x2(i);y2(j)], u_C, S_C, u_D, S_D, u_E, S_E);
  end
end
% Add the class boundary to figure 2
figure(2);
hold on
contour(x2,y2,c2',[1.5 2.5],'k');
hold off
