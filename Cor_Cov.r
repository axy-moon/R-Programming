#Correlation and Covariance 
x <- c(1,5,7,2,4,5,1,6)
y <- c(5,3,2,5,2,1,5,6)
z <- c(5,6,3,2,8,7,5,4)

data <- data.frame(x,y,z)
(cor <- round(cor(data), 2))
(cov <- round(cov(data), 2))

round(cov2cor(cov), 2)
plot(data)
library(corrplot)
corrplot(cor)