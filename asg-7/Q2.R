# Set seed for reproducibility
set.seed(42)

# Define parameters
n <- 100
df_values <- c(2, 10, 25)

# Generate random numbers from chi-square distributions
chi_square_distributions <- lapply(df_values, function(df) rchisq(n, df))

# Plot histograms for chi-square distributions
par(mfrow = c(1, 3))  # Set up a grid for multiple plots
for (i in 1:length(df_values)) {
  hist(chi_square_distributions[[i]], breaks = 20, col = "skyblue",
       main = paste("Chi-square Distribution (df =", df_values[i], ")"),
       xlab = "Value", ylab = "Frequency")
}
