#Q2 A room has n people, and each has an equal chance of being born on any of the 365
#days of the year. (For simplicity, we’ll ignore leap years). What is the probability
#that two people in the room have the same birthday?
#(a) Use an R simulation to estimate this for various n.
#(b) Find the smallest value of n for which the probability of a match is greater than .5.

# Function to simulate the birthday problem for a given n
simulate_birthday_problem <- function(n) {
  matching_birthday_count <- 0
  
  for (i in 1:10000) {  # Perform 10,000 simulations
    birthdays <- sample(1:365, n, replace = TRUE)
    if (length(birthdays) != length(unique(birthdays))) {
      matching_birthday_count <- matching_birthday_count + 1
    }
    # Break if the probability exceeds 0.5
    if (matching_birthday_count / i > 0.5) {
      return(i)
    }
  }
  
  return(NA)  # Return NA if no match found after 10,000 simulations
}

# Find the smallest value of n where the probability is greater than 0.5
smallest_n_above_half <- sapply(1:100, simulate_birthday_problem)

cat("Smallest n for probability > 0.5:", smallest_n_above_half, "\n")
