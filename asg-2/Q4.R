#The iris dataset is a built-in dataset in R that contains measurements on 4 different
#attributes (in centimeters) for 150 flowers from 3 different species. Load this dataset
#and do the following:
# (a) Print first few rows of this dataset.
#(b) Find the structure of this dataset.
#(c) Find the range of the data regarding the sepal length of flowers.
#(d) Find the mean of the sepal length.
#(e) Find the median of the sepal length.
#(f) Find the first and the third quartiles and hence the interquartile range.
#(g) Find the standard deviation and variance.
#(h) Try doing the above exercises for sepal.width, petal.length and petal.width.
#(i) Use the built-in function summary on the dataset Iris.


# Load the Iris dataset
data(iris)

# (a) Print the first few rows of the dataset
head(iris)

# (b) Find the structure of the dataset
str(iris)

# (c) Find the range of the data for sepal length
sepal_length_range <- range(iris$Sepal.Length)
cat("Range of Sepal Length:", sepal_length_range, "\n")

# (d) Find the mean of sepal length
sepal_length_mean <- mean(iris$Sepal.Length)
cat("Mean Sepal Length:", sepal_length_mean, "\n")

# (e) Find the median of sepal length
sepal_length_median <- median(iris$Sepal.Length)
cat("Median Sepal Length:", sepal_length_median, "\n")

# (f) Find the first and third quartiles and the interquartile range for sepal length
sepal_length_quartiles <- quantile(iris$Sepal.Length, c(0.25, 0.75))
interquartile_range <- sepal_length_quartiles[2] - sepal_length_quartiles[1]
cat("First Quartile (Q1):", sepal_length_quartiles[1], "\n")
cat("Third Quartile (Q3):", sepal_length_quartiles[2], "\n")
cat("Interquartile Range (IQR):", interquartile_range, "\n")

# (g) Find the standard deviation and variance of sepal length
sepal_length_sd <- sd(iris$Sepal.Length)
sepal_length_variance <- var(iris$Sepal.Length)
cat("Standard Deviation of Sepal Length:", sepal_length_sd, "\n")
cat("Variance of Sepal Length:", sepal_length_variance, "\n")
