function R = NNc( a_train , a ,n)
% Generates a vector of the distances to each testing point given the
% training and testing sets
% a_train - The Training set
% a       - The Point to be classified
% n       - The number of points to use in classification
%
% R The average distance of the nearest N points.
for i=1:length(a_train)
   y(i)=([a_train(1,i),a_train(2,i)]-a) * ([a_train(1,i),a_train(2,i)]-a)';
end
y=sort(y);
R=0;
for i=1:min(length(a_train),n)
    R=R+y(i);
end
R=R/min(length(a_train),n);