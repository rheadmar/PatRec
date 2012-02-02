% Load class statistics
classes


% Show classes A and B
x_a = gen_class(u_A, S_A, n_A);
x_b = gen_class(u_B, S_B, n_B);
figure(1);
clf();
hold on
plot(x_a(1,:), x_a(2,:), 'r*');
plot(x_b(1,:), x_b(2,:), 'g*');
axis equal
hold off

% Show classes C, D, and E
x_c = gen_class(u_C, S_C, n_C);
x_d = gen_class(u_D, S_D, n_D);
x_e = gen_class(u_E, S_E, n_E);
figure(2);
clf();
hold on
plot(x_c(1,:), x_c(2,:), 'r*');
plot(x_d(1,:), x_d(2,:), 'g*');
plot(x_e(1,:), x_e(2,:), 'b*');
axis equal
hold off
