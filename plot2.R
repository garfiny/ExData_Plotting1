source('./reader.R')
filtered <- read_data()
plot2 <- function() {
  png(filename = "plot2.png", bg = "transparent")
  dt <- strptime(paste(filtered$Date, filtered$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
  plot(dt, as.character(filtered$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
}
plot2()