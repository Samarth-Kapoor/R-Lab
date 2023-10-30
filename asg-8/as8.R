# (a) Import the CSV data file in R and load the necessary packages
install.packages("readr")  # Install the readr package
library(readr)
data <- read_csv("Clt-data.csv")

# (b) Validate data for correctness
# Count number of rows
n_rows <- nrow(data)

# View the top ten rows of the dataset
head(data, 10)

# (c) Calculate the population mean and plot the observations with a histogram
pop_mean <- mean(data$`Wall Thickness`)  # Use backticks for column name with spaces
hist(data$`Wall Thickness`, main = "Histogram of Wall Thickness", xlab = "Wall Thickness", ylab = "Frequency")
abline(v = pop_mean, col = "red")

# (d) Now perform the following tasks:

# (a) Draw sufficient samples of size 10, calculate their means, and plot them with a histogram.
sample_size_10 <- replicate(1000, mean(sample(data$`Wall Thickness`, 10)))  # Use backticks for column name with spaces
hist(sample_size_10, main = "Sampling Distribution (Sample Size 10)", xlab = "Sample Mean", ylab = "Frequency")

# (b) Repeat the same with sample size 50, 500, and 9000.
sample_size_50 <- replicate(1000, mean(sample(data$`Wall Thickness`, 50)))  # Use backticks for column name with spaces
sample_size_500 <- replicate(1000, mean(sample(data$`Wall Thickness`, 500)))  # Use backticks for column name with spaces
sample_size_9000 <- replicate(1000, mean(sample(data$`Wall Thickness`, 9000)))  # Use backticks for column name with spaces

# Plot histograms for each sample size
par(mfrow=c(2,2))
hist(sample_size_10, main = "Sample Size 10", xlab = "Sample Mean", ylab = "Frequency")
hist(sample_size_50, main = "Sample Size 50", xlab = "Sample Mean", ylab = "Frequency")
hist(sample_size_500, main = "Sample Size 500", xlab = "Sample Mean", ylab = "Frequency")
hist(sample_size_9000, main = "Sample Size 9000", xlab = "Sample Mean", ylab = "Frequency")
