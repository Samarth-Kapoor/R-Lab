#The probability distribution of X, the number of imperfections per 10 meters of a
#synthetic fabric in continuous rolls of uniform width, is given as
#x    0     1    2    3    4
#p(x) 0.41 0.37 0.16 0.05 0.01
#Find the average number of imperfections per 10 meters of this fabric.
#(Try functions sum( ), weighted.mean( ), c(a %*% b) to find expected value/mean.

x <- c(0, 1, 2, 3, 4)
p_x <- c(0.41, 0.37, 0.16, 0.05, 0.01)

average_imperfections <- c(x%*%p_x)
print(average_imperfections)
