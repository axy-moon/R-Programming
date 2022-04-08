#Implementing Apriori Algorithm

library('arules')
library('arulesViz')
library('RColorBrewer')
data("Groceries")
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))
inspect(rules[1:10])
arules::itemFrequencyPlot(Groceries, topN = 20,
                          col = brewer.pal(n = 8, name = 'RdBu'),
                          main = "Item frequency plot",
                          type = "relative",
                          ylab = "Item frequency(Relative)")