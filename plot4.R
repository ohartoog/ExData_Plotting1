source("Read_data.R")

attach(household)
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

# topleft
plot(Datetime,Global_active_power,xlab = "",ylab = "Global Active Power (kilowatts)",type="n")
lines(Datetime,Global_active_power)

#topright
plot(Datetime,Voltage,xlab = "datetime",type="n")
lines(Datetime,Voltage)

#bottomleft
plot(Datetime,Sub_metering_1,xlab = "",ylab = "Energy sub metering",type="n")
lines(Datetime,Sub_metering_1,col = 'black')
lines(Datetime,Sub_metering_2,col = 'red')
lines(Datetime,Sub_metering_3,col = 'blue')
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lwd=c(1,1,1),
       bty = "n"
)

#bottomright
plot(Datetime,Global_reactive_power,xlab = "datetime",type="n")
lines(Datetime,Global_reactive_power)


dev.off()
