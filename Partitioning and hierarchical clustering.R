# Partitioning and hierarchical clustering
# Importing required packages for analysis ####

library(factoextra)

# Importing data for our analysis ####

wine_data <- read.delim("C:\\Users\\likhi\\Desktop\\MSDA\\Data Mining 2\\Dataset\\wine-clustering.csv", 
                        header = TRUE,
                        sep=",")

# Exploratory data analysis ####

#viewing the top 6 rows of the data set
head(wine_data)

# checking the dimension of the data set
dim(wine_data)

# checking summary statistics of the data set

summary(wine_data)

# We can see that few attributes like "proline" or "Magnesium" has larger values compared to other attributes

# scaling the data for analysis ####

scale_M <- scale(
  x = wine_data
)

# Finding the optimal number of clusters ####

factoextra::fviz_nbclust(
  x = scale_M,
  FUNcluster = kmeans,
  method = "silhouette"
)

# k-means clustering ####

kmeans_M1 <- kmeans(
  x = scale_M,
  centers = 3
)
kmeans_M1

# Partitioning using Clara method ####

clara_M <- cluster::clara(
  x = scale_M,
  k = 3
)
plot(clara_M)
par(ask=F)

print(clara_M)

# Partitioning using fanny method ####

fanny_M <- cluster::fanny(
  x = scale_M,
  k = 3
)

plot(fanny_M)
par(ask=F)

print(fanny_M)

# Partitioning using pam method ####

pam_M <- cluster::pam(
  x = wine_data,
  k = 3
)
plot(pam_M)
par(ask=F)

# In the above 3 methods we can say that clara() as we see a perfect partitioning in using clara method

# Hierarchical Clustering ####

dist_M <- dist(
  x = scale_M
)

hclust_M <- hclust(
  d = dist_M
)
plot(
  x = hclust_M
)

# Hierarchical clustering using agnes() method ####

agnes_M <- cluster::agnes(scale_M)
plot(agnes_M)
par(ask=F)

# Hierarchical clustering using diana() method ####

diana_M <- cluster::diana(scale_M)
plot(diana_M)


# Hierarchical clustering using mona() method ####

binary_M <- scale_M
for(j in 1:ncol(binary_M)) binary_M[,j] <- as.numeric(
  binary_M[,j] > median(binary_M[,j])
)
mona_M <- cluster::mona(binary_M)
print(mona_M)

plot(mona_M)
par(ask=F)