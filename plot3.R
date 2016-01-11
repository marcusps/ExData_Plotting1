source("load.data.R")

png("plot3.png", width = 480, height=480, units = "px")
with(our.data, {
  data.time <- strptime(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")
  plot(data.time, Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
  lines(data.time, Sub_metering_2, type="l", ylab = "Energy sub metering", xlab="", col="red")
  lines(data.time, Sub_metering_3, type="l", ylab = "Energy sub metering", xlab="", col="blue")
})
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
dev.off()