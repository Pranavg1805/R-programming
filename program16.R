# Load necessary libraries
if (!requireNamespace("RCurl", quietly = TRUE)) {
  install.packages("RCurl")
}
library(RCurl)

# Download and load the "water" dataset
url <- "https://vincentarelbundock.github.io/Rdatasets/csv/datasets/water.csv"
data <- read.csv(text = getURL(url))

# Display the first few rows of the dataset
head(data)

# Scatter plot to visualize the relationship between mortality and hardness
plot(data$hardness, data$mortality, main = "Mortality vs. Hardness",
     xlab = "Hardness", ylab = "Mortality", pch = 19, col = "blue")

# Fit a linear regression model
model <- lm(mortality ~ hardness, data = data)

# Display the summary of the model
summary(model)

# Add the regression line to the plot
abline(model, col = "red")

# Predict mortality for hardness = 88
new_hardness <- data.frame(hardness = 88)
predicted_mortality <- predict(model, newdata = new_hardness)
predicted_mortality
