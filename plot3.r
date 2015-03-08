hdata<-read.table("household_power_consumption.txt", sep=";", header=T)
data<-subset(hdata,Date=="1/2/2007"|Date=="2/2/2007")
data$Global_active_power<-as.numeric(data$Global_active_power)
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
data<-within(data, { datetime=format(as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S") })
data$datetime<-strptime(data$datetime,format="%d/%m/%Y %H:%M:%S")
with(data, plot(datetime,Sub_metering_1, type="l",ylab="Energy Sub metering"))
with(data, lines(datetime,Sub_metering_2,  col="blue"))
with(data, lines(datetime,Sub_metering_3,  col="red"))