#Q4 ->Suppose in a certain shipment of 250 Pentium processors there are 17 defective processors.
#A quality control consultant randomly collects 5 processors for inspection to
#determine whether or not they are defective. Let X denote the number of defectives
#in the sample. Find the probability of exactly 3 defectives in the sample, that is, 
#find P(X = 3).

N <- 250        # Total number of processors in the shipment
D <- 17         # Number of defective processors in the shipment
n <- 5          # Sample size
x <- 3          # Number of defective processors in the sample

# Calculate P(X = 3) using the hypergeometric distribution
probability <- dhyper(x, m = D, n = N - D, k = n)

cat("Probability of exactly 3 defectives in the sample:", probability, "\n")
