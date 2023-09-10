#Q5 -> R does not have a standard in-built function to calculate mode. So we create a user
# function to calculate mode of a data set in R. This function takes the vector as input
# and gives the mode value as output.

calculate_mode <- function(x) {
  unique_values <- unique(x)
  unique_counts <- table(x)
  modes <- unique_values[unique_counts == max(unique_counts)]
  
  if (length(modes) == length(x)) {
    return("No mode exists (all values are unique)")
  }
  
  return(modes)
}

# Example
data <- c(1, 2, 2, 3, 4, 4, 4, 5)
mode_result <- calculate_mode(data)
cat("Mode(s):", mode_result, "\n")