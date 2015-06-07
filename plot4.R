setwd("/Users/manikhanuja/Documents/R Workspace/ExploratoryAnalysis/CourseProject1")
elecData <- read.csv("household_power_consumption.txt", sep = ";" , blank.lines.skip = TRUE, na.strings = "?")
electData <- elecData[which(elecData$Date == '1/2/2007' | elecData$Date == '2/2/2007'), ]
datetime <- strptime(paste(electData$Date, electData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub_metering_1 <- as.numeric(electData$Sub_metering_1)
sub_metering_2 <- as.numeric(electData$Sub_metering_2)
sub_metering_3 <- as.numeric(electData$Sub_metering_3)

globalActivePower <- as.numeric(electData$Global_active_power)
globalReactivePower <- as.numeric(electData$Global_reactive_power)
voltage <- as.numeric(electData$Voltage)

par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_metering_2, type="l", col="red")
lines(datetime, sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
setwd("/Users/manikhanuja/Documents/github/ExData_Plotting1/")
png("plot4.png", width=480, height=480)
