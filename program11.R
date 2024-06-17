# Define the data for both classes
class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# (i) Calculate Mean, Median, and Range
mean_A <- mean(class_A)
median_A <- median(class_A)
range_A <- range(class_A)
range_A_diff <- range_A[2] - range_A[1]

mean_B <- mean(class_B)
median_B <- median(class_B)
range_B <- range(class_B)
range_B_diff <- range_B[2] - range_B[1]

cat("Class A - Mean:", mean_A, "Median:", median_A, "Range:", range_A_diff, "\n")
cat("Class B - Mean:", mean_B, "Median:", median_B, "Range:", range_B_diff, "\n")

# (ii) Plot Boxplot
data <- data.frame(
  score = c(class_A, class_B),
  class = factor(rep(c("Class A", "Class B"), each = length(class_A)))
)

# Plotting the boxplot
boxplot(score ~ class, data = data, main = "Scores Boxplot for Class A and Class B",
        xlab = "Class", ylab = "Scores", col = c("lightblue", "lightgreen"))
