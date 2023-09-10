#Q2 -> Assume that the test scores of a college entrance exam fits a normal distribution.
#Furthermore, the mean test score is 72, and the standard deviation is 15.2. What is
#the percentage of students scoring 84 or more in the exam?

# Define the mean and standard deviation
mean_score <- 72
std_dev <- 15.2

# Define the cutoff score (84 or more)
cutoff_score <- 84

# Calculate the percentage using the cumulative distribution function (CDF)
percentage_above_cutoff <- 1 - pnorm(cutoff_score, mean = mean_score, sd = std_dev)

# Convert the result to a percentage
percentage_above_cutoff_percent <- percentage_above_cutoff * 100

# Print the result
cat("Percentage of students scoring 84 or more in the exam:", percentage_above_cutoff_percent, "%\n")
