% Computes GED classification maps from class data
classes

res = 0.5;

% Map classifications for classes A and B
x1 = [-5:res:20]';
y1 = [0:res:20]';
c1 = zeros(length(x1),length(y1));
for i = 1:length(x1)
  for j = 1:length(y1)
    distA = ([x1(i);y1(j)]-u_A)' * inv(S_A) * ([x1(i);y1(j)]-u_A);
    distB = ([x1(i);y1(j)]-u_B)' * inv(S_B) * ([x1(i);y1(j)]-u_B);
    if distA < distB
      c1(i,j) = 1;
    else
      c1(i,j) = 2;
    end
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
    distC = ([x2(i);y2(j)]-u_C)' * inv(S_C) * ([x2(i);y2(j)]-u_C);
    distD = ([x2(i);y2(j)]-u_D)' * inv(S_D) * ([x2(i);y2(j)]-u_D);
    distE = ([x2(i);y2(j)]-u_E)' * inv(S_E) * ([x2(i);y2(j)]-u_E);
    [m, class] = min([distC distD distE]);
    c2(i,j) = class;
  end
end
% Add the class boundary to figure 2
figure(2);
hold on
contour(x2,y2,c2',[1.5 2.5],'k');
hold off
