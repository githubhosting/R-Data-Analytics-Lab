library(dplyr)  # For functions bind_rows, select, mutate etc.

# Create a data frame (in global scope) to store student information
student_data <- data.frame(
  USN = character(0),
  Name = character(0),
  Math_Score = numeric(0),
  Science_Score = numeric(0),
  History_Score = numeric(0),
  Attendance = numeric(0)
)

print(student_data)

# Function to add new student information (row) to data frame
add_student <- function(usn, name, math_score, science_score, history_score, attendance) {
  # Create a new row as a data frame
  new_student <- data.frame(
    USN = usn,
    Name = name,
    Math_Score = math_score,
    Science_Score = science_score,
    History_Score = history_score,
    Attendance = attendance
  )
  # Add the new row to the data frame
  student_data <<- bind_rows(student_data, new_student)
  cat("Student information added.\n")
}

# Function to calculate average scores
calculate_average_scores <- function() {
  avg_scores <- student_data %>%
    mutate(Average_Score = (Math_Score + Science_Score + History_Score) / 3) %>%
    select(USN, Name, Average_Score, Attendance)
  return(avg_scores)
}

# Function to identify students with low attendance
identify_low_attendance <- function(threshold) {
  low_attendance <- student_data %>%
    filter(Attendance < threshold) %>%
    select(USN, Name, Attendance)
  return(low_attendance)
}

# Function to generate a performance report
generate_report <- function() {
  if (nrow(student_data) == 0) {
    cat("No student data available for generating a report.\n")
    return()
  }
  avg_scores <- calculate_average_scores()
  print(avg_scores)
  
  low_attendance <- identify_low_attendance(70)
  print(low_attendance)
}

# Main program
while (TRUE) {
  cat("\n1. Add Student\n2. Generate Report\n3. Exit\n")
  choice <- as.integer(readline("Enter your choice: "))
  
  if (choice == 1) {
    usn <- readline("Enter USN: ")
    name <- readline("Enter student name: ")
    math_score <- as.numeric(readline("Enter math score: "))
    science_score <- as.numeric(readline("Enter science score: "))
    history_score <- as.numeric(readline("Enter history score: "))
    attendance <- as.numeric(readline("Enter attendance percentage: "))
    
    if (is.na(math_score) || is.na(science_score) || is.na(history_score) || is.na(attendance)) {
      cat("Invalid input. Please enter valid numbers for scores and attendance.\n")
      next  # Restart the loop
    }
    
    add_student(usn, name, math_score, science_score, history_score, attendance)
  } else if (choice == 2) {
    generate_report()
  } else if (choice == 3) {
    cat("Exiting the program. Goodbye!\n")
    break
  } else {
    cat("Invalid choice. Please try again.\n")
  }
}