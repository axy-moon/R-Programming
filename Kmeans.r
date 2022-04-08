#K-means Clustering

install.packages("factoextra")
library(factoextra)
data("co2")
df <- scale(co2)
set.seed(123)
km.res <- kmeans(df, 4, nstart = 25)
print(km.res$cluster)