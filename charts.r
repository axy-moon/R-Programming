#Visualising using charts

library(dplyr)
data(CO2)
co2_data <- filter(CO2, conc == 1000, grepl("1", Plant)) %>% select(Plant, uptake)
plant <- c("Qn1", "Qc1", "Mn1", "Mc1")
uptake <- co2_data$uptake
pie(uptake,
    labels = uptake,
    main = "Uptake when conc = 1000",
    col = rainbow(4))
legend("topright", plant, fill = rainbow(4))

plot(uptake,
     xlab = "Plant",
     ylab = "uptake",
     main = "uptake when conc = 1000",
     col = "red",
     type = "o",)
legend("topright", c("1 - Qn1", "2 - Qc1", "3 - Mn1", "4 - Mc1"))

barplot(uptake,
        xlab = "Plant",
        ylab = "uptake",
        main = "uptake when conc = 1000",
        col = rainbow(4),
        names.arg = plant)