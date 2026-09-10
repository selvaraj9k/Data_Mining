# ==========================================
# E-COMMERCE CUSTOMER ANALYSIS
# ==========================================

# Create customer dataset
customers <- data.frame(
  Customer_ID = c("C101","C102","C103","C104","C105",
                  "C106","C107","C108","C109","C110"),

  Age = c(22,35,28,42,31,25,39,45,29,36),

  Orders = c(2,6,4,9,5,3,7,10,3,6),

  Spending = c(2000,8500,4500,12000,7000,
               3000,9500,15000,4000,8000)
)

print(customers)


# Average spending
average <- mean(customers$Spending)

cat("Average Spending:", average, "\n")


# Total revenue
total <- sum(customers$Spending)

cat("Total Revenue:", total, "\n")


# Highest spending
highest <- max(customers$Spending)

cat("Highest Spending:", highest, "\n")


# Lowest spending
lowest <- min(customers$Spending)

cat("Lowest Spending:", lowest, "\n")


# Median spending
median_spending <- median(customers$Spending)

cat("Median Spending:", median_spending, "\n")


# Standard deviation
variation <- sd(customers$Spending)

cat("Spending Variation:", variation, "\n")


# High-value customers
high_value <- customers[
  customers$Spending >= 8000,
]

cat("\nHigh Value Customers:\n")

print(high_value)


# Frequent customers
frequent <- customers[
  customers$Orders >= 6,
]

cat("\nFrequent Customers:\n")

print(frequent)


# Correlation between orders and spending
relationship <- cor(
  customers$Orders,
  customers$Spending
)

cat(
  "\nCorrelation between Orders and Spending:",
  relationship,
  "\n"
)


# Visualization
barplot(
  customers$Spending,
  names.arg = customers$Customer_ID,
  main = "Customer Spending",
  xlab = "Customer",
  ylab = "Spending"
)