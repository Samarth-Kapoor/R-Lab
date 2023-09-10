#Q5 -> Let X be a geometric random variable with probability distribution
#f(x) =3/4*(1/4)^x−1 , x = 1,2,3, ...
#Write a function to find the probability distribution of the random variable Y = X2
#and find probability of Y for X = 3. Further, use it to find the expected value
#and variance of Y for X = 1,2,3,4,5.


# Define a function to calculate the probability distribution of Y = X^2
calculate_Y_distribution <- function(x) {
  p_y <- (3/4) * (1/4)^(x - 1)
  return(p_y)
}

# Define a function to calculate the expected value of Y = X^2
calculate_expected_value <- function(x_values) {
  expected_value <- sum(x_values * sapply(x_values, calculate_Y_distribution))
  return(expected_value)
}

# Define a function to calculate the variance of Y = X^2
calculate_variance <- function(x_values) {
  expected_value <- calculate_expected_value(x_values)
  variance <- sum((x_values^2) * sapply(x_values, calculate_Y_distribution)) - expected_value^2
  return(variance)
}

# Calculate the probability distribution of Y for X = 1, 2, 3, 4, 5
x_values <- 1:5
y_probabilities <- sapply(x_values, calculate_Y_distribution)

# Calculate the probability of Y for X = 3
x_value_for_Y_3 <- 3
probability_Y_3 <- calculate_Y_distribution(x_value_for_Y_3)

# Calculate the expected value of Y for X = 1, 2, 3, 4, 5
expected_values <- calculate_expected_value(x_values)

# Calculate the variance of Y for X = 1, 2, 3, 4, 5
variances <- calculate_variance(x_values)

# Print the results
cat("Probability distribution of Y for X = 1, 2, 3, 4, 5:\n")
print(y_probabilities)
cat("\nProbability of Y for X = 3:", probability_Y_3, "\n")
cat("Expected values of Y for X = 1, 2, 3, 4, 5:\n")
print(expected_values)
cat("\nVariances of Y for X = 1, 2, 3, 4, 5:\n")
print(variances)
