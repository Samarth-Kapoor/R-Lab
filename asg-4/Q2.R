#The time T, in days, required for the completion of a contracted project is a random
#variable with probability density function f(t) = 0.1 e(-0.1t)
#for t > 0 and 0 otherwise. Find
#the expected value of T.
#Use function integrate( ) to find the expected value of continuous random variable T.
f <- function(t) {
  if (t <= 0) {
    return(0)
  }
  return(0.1 * exp(-0.1 * t))
}

expected_value <- integrate(function(t) t*f(t), lower = 0, upper = Inf)$value
print(expected_value)
