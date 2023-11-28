# Set seed for reproducibility
set.seed(42)

# Define parameters
n <- 100
df <- n - 1

# Generate random numbers from t-distribution
t_dist <- rt(n, df)

# Plot histogram
hist(t_dist, breaks = 30, col = "skyblue", xlab = "Value", ylab = "Frequency",
     main = "Histogram of t-distribution (df = 99)")
