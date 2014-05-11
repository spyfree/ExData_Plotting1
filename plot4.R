power_consumption<-read.csv('./power_consumption.csv',sep=';')
library(datasets)

power_consumption$DateTime <- strptime(paste(power_consumption$Date, power_consumption$Time),"%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))
with(power_consumption,plot(DateTime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
with(power_consumption,plot(DateTime,Voltage),type="l",xlab="datetime",ylab="Voltage")
with(power_consumption,plot(DateTime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(power_consumption,lines(DateTime,Sub_metering_2,col="red"))
with(power_consumption,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
with(power_consumption,plot(DateTime,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power"))


dev.copy(png,'plot4.png',width=480,height=480)
dev.off()