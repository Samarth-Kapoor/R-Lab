#Q1 -> Roll 12 dice simultaneously, and let X denotes the number of 6’s that appear.
#Calcuate the probability of getting 7, 8 or 9, 6’s using R. (Try using the function pbinom;
#If we set S = {get a 6 on one roll}, P(S) = 1/6 and the rolls constitute Bernoulli trials;
#thus X ∼ binom(size=12, prob=1/6) and we are looking for P(7 ≤ X ≤ 9).

n <- 12      # Number of trials (rolls)
p_success <- 1/6  # Probability of success (getting a 6 on one roll)

# Calculate the cumulative probability for X ≤ 6 (P(X ≤ 6))
prob_X_leq_6 <- pbinom(6, size = n, prob = p_success)

# Calculate the cumulative probability for X ≤ 9 (P(X ≤ 9))
prob_X_leq_9 <- pbinom(9, size = n, prob = p_success)

# Calculate the probability for 7 ≤ X ≤ 9 (P(7 ≤ X ≤ 9))
prob_7_to_9 <- prob_X_leq_9 - prob_X_leq_6

cat("Probability of getting 7, 8, or 9 sixes when rolling 12 dice:", prob_7_to_9, "\n")
