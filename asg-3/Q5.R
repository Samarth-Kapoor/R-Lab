# Q5 -> A recent national study showed that approximately 44.7% of college students have
#used Wikipedia as a source in at least one of their term papers. Let X equal the
#number of students in a random sample of size n = 31 who have used Wikipedia as a source.
#(a) How is X distributed?
#(b) Sketch the probability mass function.
#(c) Sketch the cumulative distribution function.
#(d) Find mean, variance and standard deviation of X.

# a & b
n <- 31
p <- 0.447

# Create a vector of possible values of X
x_values <- 0:n

# Calculate the PMF for each value of X
pmf <- dbinom(x_values, size = n, prob = p)

# Plot the PMF
barplot(pmf, names.arg = x_values, xlab = "Number of Students (X)", ylab = "Probability", main = "PMF of X")

#c
# Calculate the CDF for each value of X
cdf <- pbinom(x_values, size = n, prob = p)

# Plot the CDF
plot(x_values, cdf, type = "s", xlab = "Number of Students (X)", ylab = "Cumulative Probability", main = "CDF of X")

#d
# Calculate mean, variance, and standard deviation
mean_X <- n * p
variance_X <- n * p * (1 - p)
std_deviation_X <- sqrt(variance_X)

cat("Mean of X:", mean_X, "\n")
cat("Variance of X:", variance_X, "\n")
cat("Standard Deviation of X:", std_deviation_X, "\n")
