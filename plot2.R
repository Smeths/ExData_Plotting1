# opening the power consumption file and performing data pre-processing

source("openingfile.R")

# Opening png file
png(filename = "plot2.png",width = 480, height = 480)

# Producing linegraph
par(mfrow = c(1,1))
plot(power$date_time,power$Global_active_power,xlab="",ylab = "Global Active Power (kilowatts)",type="l")

dev.off()