setwd("/Users/manikhanuja/Documents/R Workspace/ExploratoryAnalysis/CourseProject1")
elecData <- read.csv("household_power_consumption.txt", sep = ";" , blank.lines.skip = TRUE, na.strings = "?")
electData <- elecData[which(elecData$Date == '1/2/2007' | elecData$Date == '2/2/2007'), ]
datetime <- strptime(paste(electData$Date, electData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(electData$Global_active_power)
plot(datetime, globalActivePower, type = 'l', ylab="Global Active Power (kilowatts)")
dev.off()
setwd("/Users/manikhanuja/Documents/github/ExData_Plotting1/")
png("plot2.png", width=480, height=480)
