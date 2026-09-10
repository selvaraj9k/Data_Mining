# Fruit data
fruits <- data.frame(
  Fruit = c("Apple", "Mango", "Orange", "Banana", "Grapes"),
  Weight = c(150, 250, 180, 220, 100),
  Sugar = c(12, 18, 10, 16, 14)
)

# Display data
print(fruits)

# Average weight
cat(
  "Average Weight:",
  mean(fruits$Weight),
  "grams\n"
)

# Average sugar level
cat(
  "Average Sugar:",
  mean(fruits$Sugar),
  "\n"
)

# Classify fruit quality
fruits$Quality <- ifelse(
  fruits$Weight >= 180 & fruits$Sugar >= 14,
  "Good",
  "Normal"
)

# Display classification
cat("\nFruit Quality:\n")
print(fruits)

# Find good quality fruits
good_fruits <- fruits[
  fruits$Quality == "Good",
]

cat("\nGood Quality Fruits:\n")
print(good_fruits)

# Count good quality fruits
cat(
  "\nNumber of Good Quality Fruits:",
  nrow(good_fruits),
  "\n"
)

# Visualization
barplot(
  fruits$Weight,
  names.arg = fruits$Fruit,
  main = "Fruit Weight",
  xlab = "Fruit",
  ylab = "Weight (grams)"
)