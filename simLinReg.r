fit <- lm(uptake ~ conc, data = CO2)
print(fit$coefficients)