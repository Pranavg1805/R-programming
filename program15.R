data(mtcars)

# Create the boxplot
boxplot(mpg ~ cyl, data = mtcars,
        main = "Boxplot of MPG vs Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon (MPG)",
        col = "lightblue",
        border = "blue")