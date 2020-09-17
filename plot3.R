dF <- "household_power_consumption.txt"
d1 <- read.table(dF, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
d1.1 <- d1[d1$Date %in% c("1/2/2007","2/2/2007") ,]
d3 <- strptime(paste(d1.1$Date, d1.1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
d3.1 <- as.numeric(d3$Global_active_power)
d3.2 <- as.numeric(d1.1$Sub_metering_1)
d3.3 <- as.numeric(d1.1$Sub_metering_2)
d3.4 <- as.numeric(d1.1$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(d3, d3.2, type="l", ylab="Energy Submetering", xlab="")
lines(d3, d3.3, type="l", col="red")
lines(d3, d3.4, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))
dev.off()