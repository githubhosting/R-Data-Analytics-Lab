library(dplyr)
# install.packages("ggplot2")
library(ggplot2)

# Create a sample dataframe
purchase_data <- data.frame(
  CustomerID = 1:10,
  PurchaseAmount = c(150, 200, 100, 300, 250, 180, 220, 350, 280, 320)
)

# Display the sample dataframe
cat("Task 1: Loaded Dataframe\n")
print(purchase_data)

# Task 2: Data Summary
# Calculate and display the total number of records
total_records <- nrow(purchase_data)
cat("\nTask 2.1: Total Number of Records\n")
print(total_records)

# Calculate and display the total number of unique customers
unique_customers <- length(unique(purchase_data$CustomerID))
cat("\nTask 2.2: Total Number of Unique Customers\n")
print(unique_customers)

# Task 3: Calculate Statistical Measures
# Calculate and display the mean purchase amount
mean_purchase <- mean(purchase_data$PurchaseAmount, na.rm = TRUE)
cat("\nTask 3.1: Mean Purchase Amount\n")
print(mean_purchase)

# Calculate and display the median purchase amount
median_purchase <- median(purchase_data$PurchaseAmount, na.rm = TRUE)
cat("\nTask 3.2: Median Purchase Amount\n")
print(median_purchase)

# Calculate and display the standard deviation of purchase amounts
std_dev_purchase <- sd(purchase_data$PurchaseAmount, na.rm = TRUE)
cat("\nTask 3.3: Standard Deviation of Purchase Amounts\n")
print(std_dev_purchase)

# Task 4: Customer Segmentation
# Create a new column 'Segment' based on purchase amount
purchase_data <- purchase_data %>%
  mutate(Segment = ifelse(PurchaseAmount < median_purchase, "Low Spender", "High Spender"))

# Display the updated dataframe
cat("\nTask 4: Customer Segmentation\n")
print(purchase_data)

# Task 5: Visualize Data
# Create a histogram to visualize the distribution of purchase amounts using ggplot2
hist = ggplot(purchase_data, aes(x = PurchaseAmount)) +
  geom_histogram(binwidth = 50, fill = "lightblue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Purchase Amounts", x = "Purchase Amount", y = "Frequency") +
  theme_minimal()

print (hist)