# Define minimum and maximum values for feature F
min_F <- 50000
max_F <- 100000

value <- 80000

normalized_value <- (value - min_F) / (max_F - min_F)

cat("Normalized value:", normalized_value)
