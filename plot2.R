# reset plot area
par(mfrow = c(1, 1))

# Create a line plot
plot(data$Time, data$Global_active_power, type = "l", col = "black",
     main = "",
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     xaxt = 'n')

# Define the positions and labels for the ticks 
tick_positions <- c(data$Time[1], data$Time[round(length(data$Time)/2)+1], data$Time[length(data$Time)]+60)
tick_labels <- weekdays(tick_positions, abbreviate = TRUE)

# Add custom x-axis with weekday names
axis(1, at = tick_positions, labels = tick_labels, las = 1)

