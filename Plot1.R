## Get the right directory 
setwd("~/Desktop/r_test/directoryName")

## Read data 
data<-read.csv("household_power_consumption.csv", header=T, sep=';', na.strings="?", stringsAsFactors=F,dec=".")

## subset data 

data1 <-subset(data, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

## Plot data 
hist(data1$Global_active_power, main="Global Active Power", 
       +      xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
