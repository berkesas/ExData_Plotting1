# Set up the plotting area with 4 subplots (2 rows, 2 columns) 
par(mfrow = c(2, 2))

#First plot
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

#Second plot
plot(data$Time, data$Voltage, type = "l", col = "black",
     main = "",
     xlab = "datetime",
     ylab = "Global Active Power (kilowatts)",
     xaxt = 'n')

# Define the positions and labels for the ticks 
#tick_positions <- c(data$Time[1], data$Time[round(length(data$Time)/2)+1], data$Time[length(data$Time)]+60)
#tick_labels <- weekdays(tick_positions, abbreviate = TRUE)

# Add custom x-axis with weekday names
axis(1, at = tick_positions, labels = tick_labels, las = 1)

# Third plot
plot(data$Time, data$Sub_metering_1, type = "l", col = "black",
     main = "",
     xlab = "",
     ylab = "Energy sub metering",
     xaxt = 'n')

# Add the second variable to the plot
lines(data$Time, data$Sub_metering_2, col = "red")

# Add the third variable to the plot
lines(data$Time, data$Sub_metering_3, col = "blue")

# Add a legend to the top right corner
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

# Define the positions and labels for the ticks 
#tick_positions <- c(data$Time[1], data$Time[round(length(data$Time)/2)+1], data$Time[length(data$Time)]+60)
#tick_labels <- weekdays(tick_positions, abbreviate = TRUE)

# Add custom x-axis with weekday names
axis(1, at = tick_positions, labels = tick_labels, las = 1)

# Fourth plot
plot(data$Time, data$Global_reactive_power, type = "l", col = "black",
     main = "",
     xlab = "datetime",
     ylab = "Global reactive power",
     xaxt = 'n')

# Define the positions and labels for the ticks 
#tick_positions <- c(data$Time[1], data$Time[round(length(data$Time)/2)+1], data$Time[length(data$Time)]+60)
#tick_labels <- weekdays(tick_positions, abbreviate = TRUE)

# Add custom x-axis with weekday names
axis(1, at = tick_positions, labels = tick_labels, las = 1)


