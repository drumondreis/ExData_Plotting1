#reading the data
powerdata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetpowerdata <- powerdata[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]

#plot1
png("plot1.png", width=480, height=480)
hist(as.numeric(subsetpowerdata$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()