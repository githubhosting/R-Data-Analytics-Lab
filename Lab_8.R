# Task 1: Matrix Creation
matrix_A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                   nrow = 3, ncol = 3, byrow = TRUE)
matrix_B <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1),
                   nrow = 3, ncol = 3, byrow = TRUE)

print(matrix_A)
print(matrix_B)

# Task 2: Matrix Manipulation
sum_matrix <- matrix_A + matrix_B
print(sum_matrix)
scaled_matrix <- matrix_A * 2
print(scaled_matrix)

# Task 3: Matrix Operations
transposed_A <- t(matrix_A)
print(transposed_A)

product_matrix <- matrix_A * matrix_B
print(product_matrix)


# multiplication
mul_matrix <- matrix_A %*% matrix_B
print(mul_matrix)


# Task 4: Matrix Statistics
sum_matrix_A <- sum(matrix_A)
mean_matrix_B <- mean(matrix_B)
sd_matrix_B <- sd(matrix_B)

# Printing
print(sum_matrix_A)
print(mean_matrix_B)
print(sd_matrix_B)



