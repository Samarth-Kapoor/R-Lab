#(i)
pctile <- qf(0.95, df1 = 10, df2 = 20)
print(pctile)

#(ii)
area1 <- pf(1.5, df1 = 10, df2 = 20)
area2 <- 1 - area1
print(paste("Area [0, 1.5]:", area1))
print(paste("Area [1.5, +∞):", area2))


# (iii) Calculate quantiles for specific probabilities
quantile1 <- qf(0.25, df1 = 10, df2 = 20)
quantile2 <- qf(0.5, df1 = 10, df2 = 20)
quantile3 <- qf(0.75, df1 = 10, df2 = 20)
quantile4 <- qf(0.999, df1 = 10, df2 = 20)

print(paste("Quantile (p=0.25):", quantile1))
print(paste("Quantile (p=0.5):", quantile2))
print(paste("Quantile (p=0.75):", quantile3))
print(paste("Quantile (p=0.999):", quantile4))

# (iv) Generate random values and plot a histogram
n <- 1000
random_values <- rf(n, df1 = 10, df2 = 20)
hist(random_values, main = "Histogram of Random F-distribution Values", xlab = "Value", ylab = "Frequency")
