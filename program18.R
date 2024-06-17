data("AirPassengers")
passengers <- AirPassengers

# Define bins with starting point 100, width 150, and range up to 700 (inclusive)
bins <- seq(from = 100, to = 700, by = 150)

# Create the histogram
hist(passengers, breaks = bins, main = "Air Passengers Histogram", 
     xlab = "Number of Passengers", ylab = "Frequency", col = "lightblue")

# Add gridlines for better readability (optional)
abline(v = bins, linetype = "dashed", col = "gray")
