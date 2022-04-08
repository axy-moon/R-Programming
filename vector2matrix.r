# Convert a vector into matrix and perform addition

x <- seq(01,10,0.2)
y <- c(11:15)
z <- c(21:25)

m <- cbind(x,y,z)
n <- rbind(x,y,z)

print(m)
print(n)

o <- sum(m,n)
print(o)
print(x)