# Define parameters
a <- 0
b <- 60

# Calculate probability
prob_more_than_45 <- 1 - punif(45, min = a, max = b)
prob_more_than_45

# Calculate probability
prob_between_20_and_30 <- punif(30, min = a, max = b) - punif(20, min = a, max = b)
prob_between_20_and_30
