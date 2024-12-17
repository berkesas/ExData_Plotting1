# Load necessary package
library(dplyr)

# Read the data from the text file
original_data <- read.table("C:/www/coursera/data-science/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

# Convert the 'date' field to Date type
original_data$Date <- as.Date(original_data$Date, format="%d/%m/%Y")

# Filter the data for the dates 2007-02-01 and 2007-02-02
data <- original_data %>%
  filter(Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

# Convert fields to types
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
data$Voltage <- as.numeric(data$Voltage)
data$Global_intensity <- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)
data$Time <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
