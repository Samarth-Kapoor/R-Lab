lambda <- 1/2
x <- 3

density_at_x <- lambda * exp(-lambda * x)
density_at_x

x_values <- seq(0, 5, by = 0.1)
pdf_values <- lambda * exp(-lambda * x_values)

plot(x_values, pdf_values, type = "l", xlab = "x", ylab = "Density", main = "Exponential Probability Distribution")

prob_at_most_3 <- pexp(3, rate = lambda)
prob_at_most_3

cdf_values <- pexp(x_values, rate = lambda)

plot(x_values, cdf_values, type = "l", xlab = "x", ylab = "Probability", main = "Cumulative Exponential Probabilities")

set.seed(123)  # Set seed for reproducibility
simulated_data <- rexp(1000, rate = lambda)

hist(simulated_data, breaks = 30, prob = TRUE, col = "skyblue", xlab = "x", ylab = "Density", main = "Simulated Exponential Data")

# Overlay the theoretical density function
curve(dexp(x, rate = lambda), add = TRUE, col = "red", lwd = 2)
