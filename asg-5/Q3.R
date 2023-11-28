alpha <- 2
beta <- 1/3

prob_at_least_1 <- 1 - pgamma(1, shape = alpha, rate = beta)
prob_at_least_1

c_value <- qgamma(0.70, shape = alpha, rate = beta)
c_value
