read_data <- function() {
  content <- read.csv("./household_power_consumption.txt", sep=";")
  content[as.Date(content[,1], "%d/%m/%Y") == "2007-02-01" | as.Date(content[,1], "%d/%m/%Y") == "2007-02-02", ]
}