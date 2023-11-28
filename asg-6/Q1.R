library(cubature)

# Define the joint probability density function
f_xy <- function(x, y) {
  if (x >= 0 && x <= 1 && y >= 0 && y <= 1) {
    return(2 * (2 * x + 3 * y) / 5)
  } else {
    return(0)
  }
}

# (i) Check if it is a joint density function
integral_result <- adaptIntegrate(f_xy, lowerLimit = c(0, 0), upperLimit = c(1, 1))
is_joint_density <- integral_result$value  # Check if this is approximately equal to 1

# (ii) Find marginal distribution g(x) at x = 1
g_x <- function(y) {
  integral_result <- adaptIntegrate(function(x) f_xy(1, x), lowerLimit = 0, upperLimit = 1)
  return(integral_result$value)
}
marginal_g_x <- g_x(1)

# (iii) Find the marginal distribution h(y) at y = 0
h_y <- function(x) {
  integral_result <- adaptIntegrate(function(y) f_xy(y, x), lowerLimit = 0, upperLimit = 1)
  return(integral_result$value)
}
marginal_h_y <- h_y(0)

# (iv) Find the expected value of g(x, y) = xy
expected_value <- adaptIntegrate(function(x, y) x * y * f_xy(x, y), lowerLimit = c(0, 0), upperLimit = c(1, 1))$value

# Print the results
cat("Is it a joint density function?", is_joint_density, "\n")
cat("Marginal distribution g(x) at x = 1:", marginal_g_x, "\n")
cat("Marginal distribution h(y) at y = 0:", marginal_h_y, "\n")
cat("Expected value of g(x, y) = xy:", expected_value, "\n")
