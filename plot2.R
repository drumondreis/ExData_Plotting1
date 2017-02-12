#reading the data
powerdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetpowerdata <- powerdata[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot2
powertime <- strptime(paste(subsetpowerdata$Date, subsetpowerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(powertime, as.numeric(subsetpowerdata$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()