# Constants
num_students <-6
num_courses <-5
# Predefined student names 
student_names <- c("Arun Rahul", "Bheem Kumar", "Raj jumar", "Jahal A R", "Suresh", "Nams")

# Dataset: Predefined course marks for each student in 5 courses

course_marks <- matrix(c(
  85,92,78,88,95,
  75,80,85,70,60,
  10,78,56,34,56,
  78,45,67,89,90,
  89,80,67,78,90,
  80,75,70,80,90
  
), nrow = num_students, byrow = TRUE)

print(course_marks)

# Initialize a list to store processed student information 
student_records <- list()

#Loop for each student 
for (student_index in 1:num_students)
{
  
  student_name <- student_names[student_index]
  
  #Initialize variables for calculations 
  total_marks <- sum(course_marks[student_index,])
  average_marks <- total_marks/num_courses
  
  #Determine grade based on average marks
  grade <-ifelse(average_marks >= 90, "A", 
                 ifelse(average_marks >= 80, "B", 
                        ifelse(average_marks >= 70, "C", 
                               ifelse(average_marks >= 60, "D",
                                      ifelse(average_marks>=50, "E", "F")))))
  
  #Store student information as a record 
  student_record <- list(name = student_name, marks = course_marks[student_index,], total = total_marks, average = average_marks, grade = grade)

  #Append all students records together 
  student_records <- append(student_records, list(student_record))
}
#Display information each student 1-by-1 
cat("\nStudent Grade Report:\n") 
for (record in student_records)
{
  
  cat("\nName:", record$name, "\n") 
  cat("Marks:", record$marks, "\n") 
  cat("Total Marks:", record$total, "\n") 
  cat("Average Marks:", record$average, "\n") 
  cat("Grade:", record$grade, "\n")
  
}