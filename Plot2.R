file <- "household_power_consumption.txt"
colclass<-c("Global_active_power"="numeric", "Date"="character", "Time"="character")
data<-read.csv(file, sep=";", colClasses=colclass, na.strings = "?")
d1<-subset(data, Date=="1/2/2007")
d2<-subset(data, Date=="2/2/2007")
df<-rbind(d1,d2)

library(datasets)
with(df, {
  plot(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Global_active_power, type="l",main="", sub="",
       ylab="Global Active Power (kilowatt) ", xlab=" ")
  lines(strptime(paste(Date, Time),"%d/%m/%Y %H:%M:%S"), Global_active_power)
})
     
