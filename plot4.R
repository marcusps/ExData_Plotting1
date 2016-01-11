#source("load.data.R")

#png("plot1.png", width = 480, height=480, units = "px")

par(mfrow=c(2,2))

with(our.data, {
  data.time <- strptime(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")
  plot(data.time, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab="")
})

with(our.data, {
  data.time <- strptime(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")
  plot(data.time, Voltage, type="l", ylab = "Voltage", xlab="datetime")
})

with(our.data, {
  data.time <- strptime(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")
  plot(data.time, Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
  lines(data.time, Sub_metering_2, type="l", ylab = "Energy sub metering", xlab="", col="red")
  lines(data.time, Sub_metering_3, type="l", ylab = "Energy sub metering", xlab="", col="blue")
})
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

#dev.off()

