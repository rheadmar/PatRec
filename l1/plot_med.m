% Computes MED classification maps from class data
classes

% Map classifications for classes A and B
c1 = zeros(length(x1),length(y1));
for i = 1:length(x1)
  for j = 1:length(y1)
    c1(i,j) = med([x1(i);y1(j)], u_A, S_A, u_B, S_B);
  end
end
% Add the class boundary to figure 1
figure(1);
hold on
contour(x1,y1,c1',[1.5],'m');
hold off

% Map classifications for classes C, D, and E
c2 = zeros(length(x2), length(y2));
for i = 1:length(x2)
  for j = 1:length(y2)
    c2(i,j) = med([x2(i);y2(j)], u_C, S_C, u_D, S_D, u_E, S_E);
  end
end
% Add the class boundary to figure 2
figure(2);
hold on
contour(x2,y2,c2',[1.5 2.5],'m');
hold off
