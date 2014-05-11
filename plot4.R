source('./reader.R')
filtered <- read_data()
plot4 <- function() {
  png(filename = "plot4.png", bg = "transparent")
  par(mfrow = c(2, 2))
  
  plot(dt, as.character(filtered$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")
  
  plot(dt, as.character(filtered$Voltage), type="l", ylab="Voltage", xlab="datetime")
  
  plot(dt, as.character(filtered$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
  lines(dt, as.character(filtered$Sub_metering_2), col="red")
  lines(dt, as.character(filtered$Sub_metering_3), col="blue")
  legend("topright",cex=0.7, lty = 1, bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  plot(dt, as.character(filtered$Global_reactive_power), type="l", ylab="Global_reactive_power", xlab="datetime")
  dev.off()
}
plot4()