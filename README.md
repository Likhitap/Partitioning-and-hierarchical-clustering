# Partitioning-and-hierarchical-clustering

The key objective of this project is to find the optimum number of clusters in the wine dataset based on its attributes. 
Elbow method, silhouette plot & gap statistics are used to find the best K value that can be used to run K-means clustering algorithm.
K-means(), clara(), fanny() & pam() partitioning algorithms were used to obtain the ideal number of clusters.

<u>Final Thoughts on Partitioning Algorithm </u> <br>
below are the key observations from partitioning algorithm: <br>
• The best value for number of clusters (K) is 3 which is seen from the plots created using elbow method,
Silhouette calculations and gap statistics. <br>
• The best model for partitioning algorithm is given by kmeans() as the clusters are well separated from
each other. <br>

<u>Final Thoughts on Hierarchical Clustering Algorithm </u> <br>
For Hierarchical clustering, below are the two best models: <br>
• The hierarchical model build using “single” linkage method and distance metric created by “manhattan”
method is having low (around 0.548) clustering coefficient which suggest this model to be good for
outlier detection. Thus I would suggests that this as a best model for outlier detection.(As this is
based on a comparative scale) <br>
• The hierarchical model build using “ward.D” clustering method and distance metric created by “canberra”
method is having high (around 0.701) clustering coefficient which suggests that this model to
be good for partitioning the data into equal sized groups.(As this is based on a comparative scale).
Thus I consider this to be my best model for partitioning the data into equal sized groups. <br>

<u>Some Interesting observations</u> <br>
• Models built by agnes() and hclust() with average linkage show that row number 60 is distinct from all
other observations suggesting it to be an outlier in the data. However since the dendograms of these
models are not in the same height scale these are not chosen as final models. <br>
• Model built using diana() has a clustering coefficient of 0.8 suggesting a good partition of data. By
observing the dendogram created by diana() we can say that the data can be clustered into a equal
sized group of 3-4. <br>
