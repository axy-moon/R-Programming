height <- c(180,NA,174,182,176,175,NA)
weight <- c(82,93,65,74,84,NA,70)
gender <- c("Male","Female","Male","Female","Male","Female","Male")


height[is.na(height)] <- mean(height,na.rm=TRUE)
weight[is.na(weight)] <- mean(weight,na.rm=TRUE)
gender <- factor(gender)
data <- data.frame(height,weight,gender)

library(caTools)
split <- sample.split(data$height,SplitRatio = 0.75)
train <- subset(data,split == TRUE)
test <- subset(data,split == FALSE)