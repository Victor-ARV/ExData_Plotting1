dF <- "household_power_consumption.txt"
d1 <- read.table(dF, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
d1.1 <- d1[d1$Date %in% c("1/2/2007","2/2/2007") ,]

d4 <- strptime(paste(d1.1$Date, d1.1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
d4.1 <- as.numeric(d1.1$Global_active_power)
d4.2 <- as.numeric(d1.1$Global_reactive_power)
d4.3 <- as.numeric(d1.1$Voltage)
d4.4 <- as.numeric(d1.1$Sub_metering_1)
d4.5 <- as.numeric(d1.1$Sub_metering_2)
d4.6 <- as.numeric(d1.1$Sub_metering_3)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(d4, d4.1, type="l", xlab="", ylab="Global Active Power")
plot(d4, d4.3, type="l", xlab="datetime", ylab="Voltage")
plot(d4, d4.4, type="l", ylab="Energy Submetering", xlab="")

lines(d4, d4.5, type="l", col="red")
lines(d4, d4.6, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd= 1, col=c("black", "red", "blue"))

plot(d4, d4.2, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()