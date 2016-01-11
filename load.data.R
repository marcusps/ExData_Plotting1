# Assignment #1

library(data.table)

data.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(data.url, "exdata data household_power_consumption.zip", mode="wb")
unzip("exdata data household_power_consumption.zip")
data.file <- "household_power_consumption.txt"

data.a1 <- fread(data.file, sep = ";", header = TRUE, na.strings = "?")
data.a1$Date <- as.Date( data.a1$Date, "%d/%m/%Y")

our.data <- subset(data.a1, Date == as.Date( "01/02/2007", "%d/%m/%Y") | Date == as.Date( "02/02/2007", "%d/%m/%Y"))
