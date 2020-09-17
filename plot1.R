dF <- "household_power_consumption.txt"
d1 <- read.table(dF, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
d1.1 <- d1[d1$Date %in% c("1/2/2007","2/2/2007") ,]


d1.2 <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(d1.2, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()





