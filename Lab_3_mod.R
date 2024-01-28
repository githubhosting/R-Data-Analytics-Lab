# The original calculate_fine function
calculate_fine <- function(days_overdue) {
  if (days_overdue <= 7) {
    fine <- 0
  } else if (days_overdue <= 15) {
    fine_per_day <- 2
    fine <- (days_overdue - 7) * fine_per_day
  } else if (days_overdue <= 30) {
    fine_per_day <- 3
    fine <- 8 * 2 + (days_overdue - 15) * fine_per_day
  } else if (days_overdue <= 50) {
    fine_per_day <- 5
    fine <- 15 * 3 + 8 * 2 + (days_overdue - 30) * fine_per_day
  } else {
    fine <- 50  # Set a cap of 50 if days_overdue exceeds 50.
  }
  return(fine)
}

# Function to calculate fines for a matrix of students and courses
calculate_fine_matrix <- function(overdue_matrix) {
  fine_matrix <- matrix(0, nrow = nrow(overdue_matrix), ncol = ncol(overdue_matrix))
  for (i in 1:nrow(overdue_matrix)) {
    for (j in 1:ncol(overdue_matrix)) {
      days_overdue <- overdue_matrix[i, j]
      fine_matrix[i, j] <- calculate_fine(days_overdue)
    }
  }
  return(fine_matrix)
}

# Sample data for 100 students and 5 courses (randomly generated for demonstration)
set.seed(123) # for reproducibility
overdue_matrix <- matrix(sample(0:60, 100 * 5, replace = TRUE), nrow = 100, ncol = 5)

# Calculate fines
fines <- calculate_fine_matrix(overdue_matrix)

# Output the fines for each student
for (i in 1:nrow(fines)) {
  cat("Student", i, "Total Fine:", sum(fines[i, ]), "\n")
}

