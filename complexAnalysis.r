#Complex Analysis

library('dplyr')
names(CO2)
filter(CO2, Treatment == "chilled")
filter(CO2, Plant == "Qn1")
select(CO2, Plant, Type, conc)
select(CO2, ends_with("t"))
select(CO2, starts_with("P"))
select(CO2, contains("ment"))
arrange(CO2, desc(conc))
CO2 <- mutate(CO2, mean_conc = mean(conc))
names(CO2)
select(CO2, mean_conc)