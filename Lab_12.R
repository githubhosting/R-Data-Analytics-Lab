library(dplyr)
library(ggplot2)

# Task 1: Data Overview and Structure
# Read the data set IPL.csv into a data frame named ipl_data
ipl_data <- read_csv("/home/ritadmin/Documents/RLab/data.csv")

# Display the structure of the data set
cat("Task 1.1: Data Overview (Structure)\n")
str(ipl_data)

# Output summary statistics of numerical columns
cat("\nTask 1.2: Summary Statistics of Numerical Columns\n")
summary(ipl_data)

# Task 2: Basic Data Insights
# Calculate and display the total number of matches
total_matches <- nrow(ipl_data)
cat("\nTask 2.1: Total Number of Matches\n")
print(total_matches)

# Determine the number of unique teams
unique_teams <- union(unique(ipl_data$team1), unique(ipl_data$team2))
num_unique_teams <- length(unique_teams)
cat("\nTask 2.2: Number of Unique Teams\n")
print(num_unique_teams)

# List the unique teams from both Team1 and Team2
cat("\nTask 2.3: Unique Teams\n")
print(unique_teams)

# Task 3: Team Performance Analysis
# Calculate the number of matches won by each team
matches_won <- table(ipl_data$winner)
cat("\nTask 3.1: Matches Won by Each Team\n")
print(matches_won)

# Compute the average win_by_runs and win_by_wickets
average_runs <- mean(ipl_data$win_by_runs, na.rm = TRUE)
cat("\nTask 3.2: Average Win by Runs\n")
print(average_runs)

average_wickets <- mean(ipl_data$win_by_wickets, na.rm = TRUE)
cat("\nTask 3.3: Average Win by Wickets\n")
print(average_wickets)

# Task 4: Venue Insights
# Identify and display the most frequently used venue for matches
most_frequent_venue <- names(which.max(table(ipl_data$venue)))
cat("\nTask 4: Most Frequently Used Venue\n")
print(most_frequent_venue)

# Task 5: Visualization
# Create a bar plot to visualize the number of matches won by each team
# (Ignoring potential errors for missing columns)
matches_won_df <- as.data.frame(matches_won)
print(matches_won_df)

cat("\nTask 5: Bar Plot - Matches Won by Each Team\n")
barplt =ggplot(matches_won_df, aes(x = Var1, y = Freq, fill = Var1)) +
  geom_bar(stat = "identity") +
  labs(title = "Matches Won by Each Team", x = "Team", y = "Number of Matches Won") +
  theme_minimal()
print(barplt)