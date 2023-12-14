calculate_fine <- function(days_overdue) {
  if (days_overdue <= 7) {
    fine <- 0
  } else if (days_overdue <= 15) {
    fine <- (days_overdue - 7) * 2
  } else if (days_overdue <= 30) {
    fine <- 8 * 2 + (days_overdue - 15) * 3
  } else if (days_overdue <= 50) {
    fine <- 15 * 3 + 8 * 2 + (days_overdue - 30) * 5
  } else {
    fine <- 50
    cat("Fine exceeds the maximum. Please contact the library.\n")
  }
  return(fine)
}

days_overdue <- as.integer(readline("Enter the number of days overdue: "))

fine_amount <- calculate_fine(days_overdue)

if (fine_amount == 0) {
  cat("No fine. Thank you for returning the book on time!!!\n")
} else {
  if (days_overdue >= 50) {
    cat("Fine exceeds the maximum. Please contact the library.\n")
  } else {
    cat("Please pay the fine within the specified period.\n")
    cat("Fine Amount:", fine_amount, "\n")
  }
}