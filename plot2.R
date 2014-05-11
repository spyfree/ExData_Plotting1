power_consumption<-read.csv('./power_consumption.csv',sep=';')
library(datasets)

power_consumption$DateTime <- strptime(paste(power_consumption$Date, power_consumption$Time),"%d/%m/%Y %H:%M:%S")

with(power_consumption,plot(DateTime,Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

dev.copy(png,file='plot2.png',width=480,height=480)
dev.off()