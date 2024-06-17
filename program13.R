# Load the dataset
url <- "https://raw.githubusercontent.com/plotly/datasets/master/diabetes.csv"
diabetes_data <- read.csv(url)

# Display the first few rows of the dataset
head(diabetes_data)

# Scatter plot of BloodPressure vs. Age using base R
plot(diabetes_data$Age, diabetes_data$BloodPressure,
     main = "Scatter Plot of BloodPressure vs. Age",
     xlab = "Age",
     ylab = "BloodPressure",
     pch = 19, col = "blue")

# Create age groups
diabetes_data$AgeGroup <- cut(diabetes_data$Age, breaks = seq(20, 90, by = 10), right = FALSE)

# Calculate average blood pressure for each age group
age_group_bp <- aggregate(BloodPressure ~ AgeGroup, data = diabetes_data, FUN = mean)

# Bar chart of average blood pressure by age group using base R
barplot(age_group_bp$BloodPressure, names.arg = age_group_bp$AgeGroup,
        main = "Average BloodPressure by Age Group",
        xlab = "Age Group",
        ylab = "Average BloodPressure",
        col = "lightblue",
        border = "blue")
