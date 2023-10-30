# Generate a vector of 100 values between -6 and 6
x <- seq(-6, 6, length.out = 100)

# Calculate the PDF for t-distribution with degrees of freedom 1, 4, 10, and 30
pdf_df1 <- dt(x, df = 1)
pdf_df4 <- dt(x, df = 4)
pdf_df10 <- dt(x, df = 10)
pdf_df30 <- dt(x, df = 30)

# Create a plot with multiple lines
plot(x, pdf_df30, type = "l", col = "blue", lwd = 2, xlab = "x", ylab = "Density", main = "t-Distribution PDFs")

# Add lines for PDFs with different degrees of freedom
lines(x, pdf_df1, col = "red", lwd = 2)
lines(x, pdf_df4, col = "green", lwd = 2)
lines(x, pdf_df10, col = "purple", lwd = 2)

# Add a legend to the plot
legend("topright", legend = c("df = 30", "df = 1", "df = 4", "df = 10"), col = c("blue", "red", "green", "purple"), lwd = 2)
