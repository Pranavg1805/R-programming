  # Define the price data
  prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)
  
  # (i) Equal-frequency partitioning with 3 bins
  n_bins <- 3  # Number of bins
  
  # Find the total number of prices
  n_prices <- length(prices)
  
  # Calculate the cut points for bins based on equal frequency
  cut_points <- quantile(prices, probs = seq(0, 1, length.out = n_bins + 1))
  
  # Assign prices to bins
  bins <- cut(prices, breaks = cut_points, include.lowest = TRUE)
  
  # (ii) Data smoothing with bin means and boundaries
  smoothed_prices <- sapply(split(prices, bins), mean)  # Calculate bin means
  smoothed_boundaries <- cut_points[1:(n_bins + 1)] - diff(cut_points)/2  # Calculate bin boundaries (center points)
  
  # (iii) Plot histogram
  hist(prices, breaks = cut_points, col = "lightblue", main = "Electronics Prices Histogram", 
       xlab = "Price ($)", ylab = "Frequency")
  abline(v = smoothed_boundaries, linetype = "dashed", col = "red", 
         lwd = 2, label = "Smoothed Values")
  legend("topright", legend = c("Original Prices", "Smoothed Values"), 
         col = c("lightblue", "red"), fill = TRUE)
