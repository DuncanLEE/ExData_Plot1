file <- "household_power_consumption.txt"
colclass<-c("Global_active_power"="numeric", "Date"="character", "Time"="character")
data<-read.csv(file, sep=";", colClasses=colclass, na.strings = "?")
d1<-subset(data, Date=="1/2/2007")
d2<-subset(data, Date=="2/2/2007")
df<-rbind(d1,d2)

library(datasets)
par(mfrow=c(2,2))
with(df, {
  
  plot(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Global_active_power, type="l",main="", sub="",
       ylab="Global Active Power (kilowatt) ", xlab=" ")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Global_active_power)
  
  plot(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Voltage, type="l",main="", sub="",
       ylab="Voltage ", xlab="datetime ")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Voltage)
  
  
  plot(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_1, type="l",main="", sub="",
       ylab="Energy sub metering ", xlab=" ")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_1, col="black")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_2, col="red")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_3, col="blue")
  legend( "topright", bty = "n", pch = "-", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.3,xjust=0, yjust=0, lty=1)
  
  plot(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Global_reactive_power, type="l",main="", sub="",
       ylab="Global_reactive_power", xlab="datetime ")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Global_reactive_power)
  
  
  })
