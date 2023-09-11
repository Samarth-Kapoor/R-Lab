#Q3 -> A bookstore purchases three copies of a book at $6.00 each and sells them for $12.00
#each. Unsold copies are returned for $2.00 each. Let X = {number of copies sold} and
#Y = {net revenue}. If the probability mass function of X is
#x    0   1   2   3
#p(x) 0.1 0.2 0.2 0.5
#Find the expected value of Y.

x_values <- c(0, 1, 2, 3)
p_x <- c(0.1, 0.2, 0.2, 0.5)

R <- 12.00
C <- 6.00
R_return <- 2.00

E_X <- sum(x_values * p_x)

E_R <- E_X * R

E_C <- 3 * C

E_R_return <- (3 - E_X) * R_return

E_Y <- E_R - E_C + E_R_return

cat("Expected Value of Y (Net Revenue) is:", E_Y, "\n")
