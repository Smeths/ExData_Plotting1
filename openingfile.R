# opening the power consumption file

power <- read.csv("data/household_power_consumption.txt",skip=66637,nrow=2880,header=FALSE,sep=";")
powernames <- read.csv("data/household_power_consumption.txt",nrow=1,sep=";")
names(power) <- names(powernames)
remove(powernames)

# Changing to posix date and time col to data frame
power$date_time = paste(power$Date,power$Time)
power$date_time <- strptime(power$date_time, format = "%d/%m/%Y %H:%M:%S")
