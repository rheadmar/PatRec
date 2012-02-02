% Computes MAP classificatio maps from data
res = 0.5;  % classification map resolution


% Map classifications for classes A and B
x1 = [-5:res:20]';
y1 = [0:res:20]';
c1 = zeros(length(x1),length(y1));
for i = 1:length(x1)
  for j = 1:length(y1)
    pA = n_A*mvnpdf([x1(i);y1(j)], u_A, S_A);
    pB = n_B*mvnpdf([x1(i);y1(j)], u_B, S_B);
    if pA > pB
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
x2 = [-5:res:25]';
y2 = [-10:res:35]';
c2 = zeros(length(x2), length(y2));
pdfC = zeros(size(c2));
pdfD = zeros(size(c2));
pdfE = zeros(size(c2));
for i = 1:length(x2)
  for j = 1:length(y2)
    pC = n_C*mvnpdf([x2(i);y2(j)], u_C, S_C);
    pD = n_D*mvnpdf([x2(i);y2(j)], u_D, S_D);
    pE = n_E*mvnpdf([x2(i);y2(j)], u_E, S_E);
    [m, class] = max([pC pD pE]);
    c2(i,j) = class;
  end
end
% Add the class boundary to figure 2
figure(2);
hold on
contour(x2,y2,c2',[1.5 2.5],'c');
hold off

