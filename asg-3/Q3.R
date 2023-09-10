#Q3 ->On the average, five cars arrive at a particular car wash every hour. Let X count the
#number of cars that arrive from 10AM to 11AM, then X ∼Poisson(λ = 5). What is
#probability that no car arrives during this time. Next, suppose the car wash above
#is in operation from 8AM to 6PM, and we let Y be the number of customers that
#appear in this period. Since this period covers a total of 10 hours, we get that Y ∼
#Poisson(λ = 5×10 = 50). What is the probability that there are between 48 and 50
#customers, inclusive?

lambda <- 50
p_48 <- dpois(48, lambda)
p_49 <- dpois(49, lambda)
p_50 <- dpois(50, lambda)

total_probability <- p_48 + p_49 + p_50

cat("Probability of 48 to 50 customers:", total_probability, "\n")
