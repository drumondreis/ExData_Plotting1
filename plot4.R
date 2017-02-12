#reading the data
powerdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetpowerdata <- powerdata[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot4
powertime <- strptime(paste(subsetpowerdata$Date, subsetpowerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(powertime, as.numeric(subsetpowerdata$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(powertime, as.numeric(subsetpowerdata$Voltage), type="l", xlab="datetime", ylab="Voltage")

plot(powertime, as.numeric(subsetpowerdata$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(powertime, as.numeric(subsetpowerdata$Sub_metering_2), type="l", col="red")
lines(powertime, as.numeric(subsetpowerdata$Sub_metering_3)
, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(powertime, as.numeric(subsetpowerdata$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()