% Computes MED classification maps from class data
classes
res = 0.25;
CP=5;

for i = 1:length(x1)
  for j = 1:length(y1)
    if NNc(x_a,[x1(i),y1(j)],CP) < NNc(x_b,[x1(i),y1(j)],CP)
      c1(i,j) = 1;
    else
      c1(i,j) = 2;
    end
  end
end
% Add the class boundary to figure 1
figure(1);
hold on
contour(x1,y1,c1',[1.5],'c');
hold off

% Map classifications for classes C, D, and E

for i = 1:length(x2)
  for j = 1:length(y2)
    distC = NNc(x_c,[x2(i),y2(j)],CP);
    distD = NNc(x_d,[x2(i),y2(j)],CP);
    distE =  NNc(x_e,[x2(i),y2(j)],CP);
    [m, class] = min([distC distD distE]);
    c2(i,j) = class;
  end
end
% Add the class boundary to figure 2
figure(2);
hold on
contour(x2,y2,c2',[1.5 2.5],'c');
hold off