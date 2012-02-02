% Load class statistics
gen_classes

% Show classes A and B
figure(1);
clf();
hold on
plot(x_a(1,:), x_a(2,:), 'r*');
plot_ellipse(u_A, S_A, 'k');
plot(x_b(1,:), x_b(2,:), 'g*');
plot_ellipse(u_B, S_B, 'k');
hold off

% Show classes C, D, and E
figure(2);
clf();
hold on
plot(x_c(1,:), x_c(2,:), 'r*');
plot_ellipse(u_C, S_C, 'k');
%plot_ellipse(u_C, S_C, 'k', 2);
%plot_ellipse(u_C, S_C, 'k', 3);
plot(x_d(1,:), x_d(2,:), 'g*');
plot_ellipse(u_D, S_D, 'k');
plot(x_e(1,:), x_e(2,:), 'b*');
plot_ellipse(u_E, S_E, 'k');
%plot_ellipse(u_E, S_E, 'k', 2);
%plot_ellipse(u_E, S_E, 'k', 3);
hold off
