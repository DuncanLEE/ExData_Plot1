file <- "household_power_consumption.txt"

colclass<-c("Global_active_power"="numeric")
data<-read.csv(file, sep=";", colClasses=colclass, na.strings = "?")
d1<-subset(data, Date=="1/2/2007")
d2<-subset(data, Date=="2/2/2007")
df<-rbind(d1,d2)
hist(df$Global_active_power,  include.lowest = TRUE, 
     col="red", main ="Global Active Power", 
     xlab = "Global Active Power (Kilowatt)", break="Sturges")
          