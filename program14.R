# Sample data: Points scored by players
points <- c(55, 67, 45, 68, 72, 80, 85, 90, 44, 76, 60, 50, 92, 110, 78, 83, 88, 95, 47, 65)

# Creating the box plot
boxplot(points,
        main = "Box Plot of Points Scored by Tennis Players",
        ylab = "Points",
        col = "lightblue",
        border = "blue")

