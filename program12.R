ages <- c("5-6 years", "7-8 years", "9-10 years")
photo_A <- c(18, 2, 20)
photo_B <- c(22, 28, 10)
photo_C <- c(20, 40, 40)
data <- data.frame(
  age = ages,
  A = photo_A,
  B = photo_B,
  C = photo_C
)

# Covariance between B and C
cov_B_C <- cov(data$B, data$C)
cat("Sample Covariance between B and C:", cov_B_C, "\n")

# Covariance matrix for the preferences
cov_matrix <- cov(data[, 2:4])
cat("Sample Covariance Matrix:\n")
print(cov_matrix)

# Correlation between B and C
cor_B_C <- cor(data$B, data$C)
cat("Sample Correlation between B and C:", cor_B_C, "\n")

# Correlation matrix for the preferences
cor_matrix <- cor(data[, 2:4])
cat("Sample Correlation Matrix:\n")
print(cor_matrix)
