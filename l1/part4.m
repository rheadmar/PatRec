% Obtains classifier error rates / confusion matrices.
gen_classes

% MED
med_conf = zeros(2,2);
med_cor = 0;
for i = 1:n_A
  c = med(t_a(:,i), u_A, S_A, u_B, S_B);
  med_cor = med_cor + (c == 1);
  med_conf(1,c) = med_conf(1,c) + 1;
end
for i = 1:n_B
  c = med(t_b(:,i), u_A, S_A, u_B, S_B);
  med_cor = med_cor + (c==2);
  med_conf(2,c) = med_conf(2,c) + 1;
end

med_conf
med_cor / (n_A + n_B)

med_conf = zeros(3,3);
med_cor = 0;
for i = 1:n_C
  c = med(t_c(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  med_cor = med_cor + (c==1);
  med_conf(1,c) = med_conf(1,c) + 1;
end
for i = 1:n_D
  c = med(t_d(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  med_cor = med_cor + (c==2);
  med_conf(2,c) = med_conf(2,c) + 1;
end
for i = 1:n_E
  c = med(t_e(:,i), u_C, S_C, u_D, S_D, u_E, S_E);
  med_cor = med_cor + (c==3);
  med_conf(3,c) = med_conf(3,c) + 1;
end

med_conf
med_cor / (n_C + n_D + n_E)

