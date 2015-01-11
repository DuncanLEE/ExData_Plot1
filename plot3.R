file <- "household_power_consumption.txt"
colclass<-c("Global_active_power"="numeric", "Date"="character", "Time"="character")
data<-read.csv(file, sep=";", colClasses=colclass, na.strings = "?")
d1<-subset(data, Date=="1/2/2007")
d2<-subset(data, Date=="2/2/2007")
df<-rbind(d1,d2)

library(datasets)
with(df, {
  plot(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_1, type="l",main="", sub="",
       ylab="Energy sub metering ", xlab=" ")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_1, col="black")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_2, col="red")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Sub_metering_3, col="blue")
})
legend( "topright", pch = "-", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=1,xjust=0, yjust=0, lty=1)