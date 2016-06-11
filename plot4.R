# opening the power consumption file and performing data pre-processing

source("openingfile.R")

# Opening png file
png(filename = "plot4.png",width = 480, height = 480)
      
# Producing Histogram
par(mfrow = c(2,2))
with(power, {
  plot(date_time,Global_active_power,xlab="",ylab = "Global Active Power",type="l")
  plot(date_time,Voltage,xlab="datetime",ylab="Voltage",type="l")
  plot(date_time,Sub_metering_1,xlab="",ylab="Energy sub meeting",type="l")
  lines(date_time,Sub_metering_2,col="Red")
  lines(date_time,Sub_metering_3,col="Blue")
  legend('topright', names(power)[7:9],lty=1, col=c('black', 'red', 'blue'), border = "black")
  plot(date_time,Global_reactive_power,xlab="datetime",type="l")
})

dev.off()