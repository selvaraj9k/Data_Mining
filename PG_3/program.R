# ==========================================
# HOSPITAL PATIENT ANALYSIS
# ==========================================

patients <- data.frame(

  Patient_ID = paste0("P", 101:112),

  Age = c(
    25, 35, 45, 50,
    60, 65, 30, 55,
    48, 70, 32, 58
  ),

  BP = c(
    110, 120, 130, 140,
    150, 160, 115, 145,
    135, 170, 118, 155
  ),

  Sugar = c(
    90, 100, 120, 140,
    180, 200, 95, 160,
    135, 210, 105, 175
  )
)

print(patients)


# Average age
cat(
  "Average Age:",
  mean(patients$Age),
  "\n"
)


# Average BP
cat(
  "Average Blood Pressure:",
  mean(patients$BP),
  "\n"
)


# Average sugar
cat(
  "Average Sugar:",
  mean(patients$Sugar),
  "\n"
)


# Create risk classification
patients$Risk <- ifelse(
  patients$BP >= 140 |
  patients$Sugar >= 160,
  "High",
  "Low"
)


cat("\nPatient Risk:\n")

print(patients)


# High-risk patients
high_risk <- patients[
  patients$Risk == "High",
]

cat("\nHigh Risk Patients:\n")

print(high_risk)


# Number of high-risk patients
high_risk_count <- sum(
  patients$Risk == "High"
)

cat(
  "\nHigh Risk Patient Count:",
  high_risk_count,
  "\n"
)


# Correlation
age_bp <- cor(
  patients$Age,
  patients$BP
)

sugar_bp <- cor(
  patients$Sugar,
  patients$BP
)

cat(
  "\nAge-BP Correlation:",
  age_bp,
  "\n"
)

cat(
  "Sugar-BP Correlation:",
  sugar_bp,
  "\n"
)


# Visualization
plot(
  patients$Age,
  patients$BP,
  main = "Age vs Blood Pressure",
  xlab = "Age",
  ylab = "Blood Pressure"
)