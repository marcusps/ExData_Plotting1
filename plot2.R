
source("load.data.R")

png("plot2.png", width = 480, height=480, units = "px")
with(our.data, {
  data.time <- strptime(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")
  plot(data.time, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab="")
})
dev.off()