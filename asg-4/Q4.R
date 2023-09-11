#Q4 -> Find the first and second moments about the origin of the random variable X 
#with probability density function f(x) = 0.5e-|x|, 1 < x < 10 and 0 otherwise. 
#Further use the results to find Mean and Variance.
#(kth moment = E(Xk), Mean = first moment and Variance = second moment – Mean^2
# Define the probability density function f(x)

f_x <- function(x) {
  if (x >= 1 && x <= 10) {
    return(0.5 * exp(-abs(x)))
  } else {
    return(0)
  }
}

# Define the range for integration
a <- 1
b <- 10

# Calculate the first moment about the origin (mean)
mean_x <- integrate(function(x) x * f_x(x), lower = a, upper = b)$value

# Calculate the second moment about the origin
second_moment <- integrate(function(x) (x^2) * f_x(x), lower = a, upper = b)$value

# Calculate the variance (Var(X) = E(X^2) - (E(X))^2)
variance_x <- second_moment - mean_x^2

# Print the results
cat("Mean (First Moment about the Origin) of X:", mean_x, "\n")
cat("Variance of X:", variance_x, "\n")
