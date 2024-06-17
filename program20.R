# Define exam scores for Class A and Class B
class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84, 76, 35, 47, 64, 95, 66, 89, 36, 84)
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50, 51, 56, 84, 60, 59, 70, 63, 66, 50)

# Calculate mean, median, and range for each class
mean_A <- mean(class_A)
median_A <- median(class_A)
range_A <- max(class_A) - min(class_A)

mean_B <- mean(class_B)
median_B <- median(class_B)
range_B <- max(class_B) - min(class_B)

# Print results
cat("Class A:")
cat("\n  Mean:", mean_A)
cat("\n  Median:", median_A)
cat("\n  Range:", range_A, "\n")

cat("Class B:")
cat("\n  Mean:", mean_B)
cat("\n  Median:", median_B)
cat("\n  Range:", range_B, "\n")

# Create boxplot
boxplot(class_A, class_B, 
        names = c("Class A", "Class B"), 
        col = c("lightblue", "lightgreen"), # Set box colors
        main = "Exam Scores - Class A vs. Class B", # Set plot title
        xlab = "Class", # Set x-axis label
        ylab = "Score") # Set y-axis label
