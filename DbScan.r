#DB Scan Algorithm for spatial Data

library(fpc)
data(iris)
View(iris)
iris_1 <- iris[-5]
set.seed(220)
(DBscan_cl <- dbscan(iris_1, eps = 0.5, MinPts = 2))
DBscan_cl$cluster
table(DBscan_cl$cluster, iris$Species)
plot(DBscan_cl, iris_1, main="DBScan")