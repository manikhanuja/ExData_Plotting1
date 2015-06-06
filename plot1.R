setwd("/Users/manikhanuja/Documents/R Workspace/ExploratoryAnalysis/CourseProject1")
elecData <- read.csv("household_power_consumption.txt", sep = ";" , blank.lines.skip = TRUE, na.strings = "?")
electData <- elecData[which(elecData$Date == '1/2/2007' | elecData$Date == '2/2/2007'), ]
electData$Date <- as.Date(electData$Date, "%m/%d/%y")
globalActivePower <- as.numeric(electData$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
setwd("/Users/manikhanuja/Documents/github/ExData_Plotting1/")
png("plot1.png", width=480, height=480)
