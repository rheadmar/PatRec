% Computes MED classification maps from class data
classes
res = 0.25;
CP=1;
x_a = gen_class(u_A, S_A, n_A);
x_b = gen_class(u_B, S_B, n_B);

% Map classifications for classes A and B
x1 = [-5:res:20]';
y1 = [0:res:20]';
c1 = zeros(length(x1),length(y1));

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
plot(x_a(1,:), x_a(2,:), 'r*');
plot(x_b(1,:), x_b(2,:), 'g*');
contour(x1,y1,c1',[1.5],'k');
hold off

% Map classifications for classes C, D, and E

x_c = gen_class(u_C, S_C, n_C);
x_d = gen_class(u_D, S_D, n_D);
x_e = gen_class(u_E, S_E, n_E);

x2 = [-5:res:25]';
y2 = [-10:res:35]';
c2 = zeros(length(x2), length(y2));
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
contour(x2,y2,c2',[1.5 2.5],'k');
plot(x_c(1,:), x_c(2,:), 'r*');
plot(x_d(1,:), x_d(2,:), 'g*');
plot(x_e(1,:), x_e(2,:), 'b*');
hold off