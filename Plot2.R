## Plot2.R

setwd("~/Desktop/r_test/directoryName")
data <- read.csv("household_power_consumption.csv", header=T, sep=';', na.strings="?", stringsAsFactors=F,dec=".")
data1 <-subset(data, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
data1$datetime <- paste(data1$Date, data1$Time)
data1$datetime <- as.POSIXct(data1$datetime)

##Plotting

plot(data1$Global_active_power~data1$datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

