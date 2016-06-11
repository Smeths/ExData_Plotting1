# opening the power consumption file and performing data pre-processing

source("openingfile.R")

# Opening png file
png(filename = "plot3.png",width = 480, height = 480)

# Producing linegraphs
par(mfrow = c(1,1))
plot(power$date_time,power$Sub_metering_1,xlab="",ylab="Energy sub meeting",type="l")
lines(power$date_time,power$Sub_metering_2,col="Red")
lines(power$date_time,power$Sub_metering_3,col="Blue")
legend('topright', names(power)[7:9],lty=1, col=c('black', 'red', 'blue'), border = "black")

dev.off()