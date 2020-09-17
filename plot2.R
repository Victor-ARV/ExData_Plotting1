dF <- "household_power_consumption.txt"
d1 <- read.table(dF, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
d1.1 <- d1[d1$Date %in% c("1/2/2007","2/2/2007") ,]
d2 <- strptime(paste(d1.1$Date, d1.1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
d2.1 <- as.numeric(d1.1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(d2, type="l", d2.1, xlab="", ylab="Global Active Power (kilowatts)")
dev.off()