# opening the power consumption file and performing data pre-processing

source("openingfile.R")

# Opening png file
png(filename = "plot1.png",width = 480, height = 480)

# Producing Histogram
par(mfrow = c(1,1))
hist(power$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)", col = "red")

dev.off()
