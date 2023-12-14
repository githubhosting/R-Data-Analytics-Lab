library(dplyr)
library(ggplot2)

# Example customer purchase data with more samples
purchase_data <- data.frame(
  CustomerID = c(101, 102, 103, 104, 105, 106, 107, 108, 109, 110),
  PurchaseAmount = c(150, 200, 120, 300, 80, 180, 250, 130, 220, 270)
)

# calculate statistical measures
mean_purchase <- mean(purchase_data$PurchaseAmount)
median_purchase <- median(purchase_data$PurchaseAmount)
sd_purchase <- sd(purchase_data$PurchaseAmount)
q1_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.25)
q3_purchase <- quantile(purchase_data$PurchaseAmount, probs = 0.75)

# Display results
cat("Mean Purchase Amount:", mean_purchase, "\n")
cat("Median Purchase Amount:", median_purchase, "\n")
cat("Standard Deviation of Purchase Amounts:", sd_purchase, "\n")
cat("1st Quartile of Purchase Amounts:", q1_purchase, "\n")
cat("3rd Quartile of Purchase Amounts:", q3_purchase, "\n")

# Create a histogram with different number of bins and colors
ggplot(purchase_data, aes(x = PurchaseAmount)) +
  geom_histogram(binwidth = 30, fill = "green", color = "black") +
  labs(title = "Distribution of Purchase Amounts", x = "Purchase Amount", y = "Frequency")