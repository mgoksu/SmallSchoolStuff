% Mirac Goksu Ozturk
% Cmpe 530 - k-means HW
%
%
% This dataset is taken from
% https://cs.joensuu.fi/sipu/datasets/
% 
% P. Fr?nti and O. Virmajoki, 
% "Iterative shrinking method for clustering problems", 
% Pattern Recognition, 39 (5), 761-765, May 2006.
% 
% Dataset is synthetic with 15 clusters
X = load('s1.txt');

% number of clusters
n_cluster = 15;

% k_means function with euclidean distance and 5 iterations
[idx,C] = kmeans(X,n_cluster,'Distance','sqeuclidean','Replicates',5,'Display','final');

% plotting automatically according to the number of clusters
figure;
for i=1:n_cluster
    plot(X(idx==i,1),X(idx==i,2),'.','color',rand(1,3),'MarkerSize',12)
    hold on
end

% plotting centroids
plot(C(:,1),C(:,2),'kx','MarkerSize',15,'LineWidth',3)
title 'Cluster Assignments and Centroids'
hold off