hdata<-read.table("household_power_consumption.txt", sep=";", header=T)
data<-subset(hdata,Date=="1/2/2007"|Date=="2/2/2007")
data$Global_active_power<-as.numeric(data$Global_active_power)
hist(data$Global_active_power, col="red",breaks=13, xlab="Global Active Power (kilowatts)",main="Global Active Power")
