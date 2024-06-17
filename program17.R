library(ggplot2)  # Load ggplot2 package for advanced plotting

# Load the mtcars dataset (built-in)
data(mtcars)

# Define aesthetics for the plot
ggplot(mtcars, aes(x = qsec, y = mpg, color = cyl)) +
  
  # Add multiple geom_line layers for each cylinder count
  geom_line(aes(group = cyl)) +
  
  # Customize the plot
  labs(title = "MPG vs. Quarter Mile Time by Cylinders",
       x = "Quarter Mile Time (sec)", y = "Miles Per Gallon") +
  theme_bw()  # Apply a black and white theme (optional)
