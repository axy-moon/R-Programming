# Visualizing the data using ggPlot and matrix Plot

library(ggplot2)
UKDriverDeaths <- read.csv("./data/UKDriverDeaths.csv")
ggplot(UKDriverDeaths, aes(time, value)) + geom_point()
plot(UKDriverDeaths)

UKgas <- read.csv("./data/UKgas.csv")
ggplot(UKgas, aes(time, UKgas)) + geom_point()
plot(UKgas, pch = 1)