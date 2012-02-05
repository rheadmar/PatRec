% Obtains classifier error rates / confusion matrices.
gen_classes

% Classes A and B
med_conf = zeros(2,2);
med_cor = 0;

ged_conf = zeros(2,2);
ged_cor = 0;

map_conf = zeros(2,2);
map_cor = 0;

nn_conf = zeros(2,2);
nn_cor = 0;

knn_conf = zeros(2,2);
knn_cor = 0;

for i = 1:n_A
  c = med(t_a(:,i), u_A, S_A, u_B, S_B);
  med_cor = med_cor + (c == 1);
  med_conf(1,c) = med_conf(1,c) + 1;

  c = ged(t_a(:,i), u_A, S_A, u_B, S_B);
  ged_cor = ged_cor + (c == 1);
  ged_conf(1,c) = ged_conf(1,c) + 1;


  c = map(t_a(:,i), n_A, u_A, S_A, n_B, u_B, S_B);
  map_cor = map_cor + (c == 1);
  map_conf(1,c) = map_conf(1,c) + 1;
  
  c = nncl(t_a(:,i), 1, x_a, x_b);
  nn_cor = nn_cor + (c == 1);
  nn_conf(1,c) = nn_conf(1,c) + 1;
  
  c = nncl(t_a(:,i), 5, x_a, x_b);
  knn_cor = knn_cor + (c == 1);
  knn_conf(1,c) = knn_conf(1,c) + 1;
  
end
for i = 1:n_B
  c = med(t_b(:,i), u_A, S_A, u_B, S_B);
  med_cor = med_cor + (c==2);
  med_conf(2,c) = med_conf(2,c) + 1;

  c = ged(t_b(:,i), u_A, S_A, u_B, S_B);
  ged_cor = ged_cor + (c==2);
  ged_conf(2,c) = ged_conf(2,c) + 1;


  c = map(t_b(:,i), n_A, u_A, S_A, n_B, u_B, S_B);
  map_cor = map_cor + (c==2);
  map_conf(2,c) = map_conf(2,c) + 1;

  c = nncl(t_b(:,i), 1, x_a, x_b);
  nn_cor = nn_cor + (c == 2);
  nn_conf(2,c) = nn_conf(2,c) + 1;
  
  c = nncl(t_b(:,i), 5, x_a, x_b);
  knn_cor = knn_cor + (c == 2);
  knn_conf(2,c) = knn_conf(2,c) + 1;
end

ged_conf
1 - ged_cor / (n_A + n_B)

med_conf
1 - med_cor / (n_A + n_B)

map_conf
1 - map_cor / (n_A + n_B)

nn_conf
1 - nn_cor / (n_A + n_B)

knn_conf
1 - knn_cor / (n_A + n_B)

% Classes C, D, and E
med_conf = zeros(3,3);
med_cor = 0;

ged_conf = zeros(3,3);
ged_cor = 0;

map_conf = zeros(3,3);
map_cor = 0;

nn_conf = zeros(3,3);
nn_cor = 0;

knn_conf = zeros(3,3);
knn_cor = 0;

for i = 1:n_C
  c = med(t_c(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  med_cor = med_cor + (c==1);
  med_conf(1,c) = med_conf(1,c) + 1;

  c = ged(t_c(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  ged_cor = ged_cor + (c==1);
  ged_conf(1,c) = ged_conf(1,c) + 1;

  c = map(t_c(:,i), n_C, u_C, S_C, n_D, u_D, S_D, n_E, u_E, S_E);
  map_cor = map_cor + (c==1);
  map_conf(1,c) = map_conf(1,c) + 1;
  
  c = nncl(t_c(:,i), 1, x_c, x_d, x_e);
  nn_cor = nn_cor + (c == 1);
  nn_conf(1,c) = nn_conf(1,c) + 1;
  
  c = nncl(t_c(:,i), 5, x_c, x_d, x_e);
  knn_cor = knn_cor + (c == 1);
  knn_conf(1,c) = knn_conf(1,c) + 1;
end
for i = 1:n_D
  c = med(t_d(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  med_cor = med_cor + (c==2);
  med_conf(2,c) = med_conf(2,c) + 1;

  c = ged(t_d(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  ged_cor = ged_cor + (c==2);
  ged_conf(2,c) = ged_conf(2,c) + 1;

  c = map(t_d(:,i), n_C, u_C, S_C, n_D, u_D, S_D, n_E, u_E, S_E);
  map_cor = map_cor + (c==2);
  map_conf(2,c) = map_conf(2,c) + 1;

  c = nncl(t_d(:,i), 1, x_c, x_d, x_e);
  nn_cor = nn_cor + (c == 2);
  nn_conf(2,c) = nn_conf(2,c) + 1;
  
  c = nncl(t_d(:,i), 5, x_c, x_d, x_e);
  knn_cor = knn_cor + (c == 2);
  knn_conf(2,c) = knn_conf(2,c) + 1;
end
for i = 1:n_E
  c = med(t_e(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  med_cor = med_cor + (c==3);
  med_conf(3,c) = med_conf(3,c) + 1;

  c = ged(t_e(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  ged_cor = ged_cor + (c==3);
  ged_conf(3,c) = ged_conf(3,c) + 1;

  c = map(t_e(:,i), n_C, u_C, S_C, n_D, u_D, S_D, n_E, u_E, S_E);
  map_cor = map_cor + (c==3);
  map_conf(3,c) = map_conf(3,c) + 1;
  
  c = nncl(t_e(:,i), 1, x_c, x_d, x_e);
  nn_cor = nn_cor + (c == 3);
  nn_conf(3,c) = nn_conf(3,c) + 1;
  
  c = nncl(t_e(:,i), 5, x_c, x_d, x_e);
  knn_cor = knn_cor + (c == 3);
  knn_conf(3,c) = knn_conf(3,c) + 1;
end

med_conf
1 - med_cor / (n_C + n_D + n_E)

ged_conf
1 - ged_cor / (n_C + n_D + n_E)

map_conf
1 - map_cor / (n_C + n_D + n_E)

nn_conf
1 - nn_cor / (n_C + n_D + n_E)

knn_conf
1 - knn_cor / (n_C + n_D + n_E)
