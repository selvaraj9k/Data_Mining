# ==========================================
# BANK TRANSACTION ANALYSIS
# ==========================================

transactions <- data.frame(
  Transaction_ID = 1001:1012,

  Customer = c(
    "C101","C102","C103","C104",
    "C105","C106","C107","C108",
    "C109","C110","C111","C112"
  ),

  Amount = c(
    2500, 4200, 1800, 75000,
    3200, 95000, 4100, 2800,
    65000, 3500, 5200, 85000
  )
)

print(transactions)


# Average transaction
average <- mean(transactions$Amount)

cat(
  "Average Transaction:",
  average,
  "\n"
)


# Maximum transaction
maximum <- max(transactions$Amount)

cat(
  "Maximum Transaction:",
  maximum,
  "\n"
)


# Fraud threshold
threshold <- 50000


# Classify transactions
transactions$Status <- ifelse(
  transactions$Amount > threshold,
  "Suspicious",
  "Normal"
)


cat("\nTransaction Status:\n")

print(transactions)


# Get suspicious transactions
suspicious <- transactions[
  transactions$Status == "Suspicious",
]

cat("\nSuspicious Transactions:\n")

print(suspicious)


# Number of suspicious transactions
count <- sum(
  transactions$Status == "Suspicious"
)

cat(
  "\nSuspicious Transaction Count:",
  count,
  "\n"
)


# Percentage
percentage <- (
  count / nrow(transactions)
) * 100

cat(
  "Suspicious Transaction Percentage:",
  percentage,
  "%\n"
)


# Visualization
barplot(
  transactions$Amount,
  names.arg = transactions$Transaction_ID,
  main = "Bank Transaction Amounts",
  xlab = "Transaction ID",
  ylab = "Amount"
)