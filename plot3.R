source('./reader.R')
filtered <- read_data()
plot3 <- function() {
  png(filename = "plot3.png", bg = "transparent")
  dt <- strptime(paste(filtered$Date, filtered$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
  plot(dt, as.character(filtered$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
  lines(dt, as.character(filtered$Sub_metering_2), col="red")
  lines(dt, as.character(filtered$Sub_metering_3), col="blue")
  legend("topright",cex=0.7, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
}
plot3()