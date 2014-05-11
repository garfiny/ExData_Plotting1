source('./reader.R')
filtered <- read_data()
plot1 <- function() {
  png(filename = "plot1.png", bg = "transparent")
  with(filtered, hist(as.numeric(as.character(Global_active_power)), col="red", xaxt = "n", xlab = "Global Active Power (kilowatts)", main = "Global Active Power"))
  axis(side=1, at=seq(0,6, by=2), labels=seq(0,6,by=2))
  dev.off()
}
plot1()