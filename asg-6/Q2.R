# Define joint probability mass function values
joint_mass_function <- matrix(c(0, 1, 2, 0, 1, 2, 0, 1, 2,
                                1, 2, 3, 2, 3, 4, 3, 4, 5,
                                2, 3, 4, 3, 4, 5, 4, 5, 6,
                                3, 4, 5, 4, 5, 6, 5, 6, 7), nrow = 4, byrow = TRUE)

# (i) Display the joint mass function in matrix form
joint_mass_function

# (ii) Check if it is a joint mass function
is_joint_mass_function <- sum(joint_mass_function) == 1

# (iii) Find the marginal distribution g(x) for x = 0, 1, 2, 3
marginal_g_x <- apply(joint_mass_function, 1, sum)

# (iv) Find the marginal distribution h(y) for y = 0, 1, 2
marginal_h_y <- apply(joint_mass_function, 2, sum)

# (v) Find the conditional probability at x = 0 given y = 1
conditional_prob <- joint_mass_function[1, 2] / marginal_h_y[2]

# (vi) Calculate statistical properties
x_values <- c(0, 1, 2, 3)
y_values <- c(0, 1, 2)

# Calculate mean, variance, covariance, and correlation coefficient
E_X <- sum(x_values * marginal_g_x)
E_Y <- sum(y_values * marginal_h_y)
E_XY <- sum(outer(x_values, y_values) * joint_mass_function)
Var_X <- sum((x_values - E_X)^2 * marginal_g_x)
Var_Y <- sum((y_values - E_Y)^2 * marginal_h_y)
Cov_XY <- E_XY - E_X * E_Y
Corr_XY <- Cov_XY / sqrt(Var_X * Var_Y)

# Display results
is_joint_mass_function
marginal_g_x
marginal_h_y
conditional_prob
E_X
E_Y
E_XY
Var_X
Var_Y
Cov_XY
Corr_XY
