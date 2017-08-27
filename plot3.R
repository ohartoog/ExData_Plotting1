source("Read_data.R")

attach(household)

png(filename = "plot3.png", width = 480, height = 480)
plot(Datetime,Sub_metering_1,xlab = "",ylab = "Energy sub metering",type="n")
lines(Datetime,Sub_metering_1,col = 'black')
lines(Datetime,Sub_metering_2,col = 'red')
lines(Datetime,Sub_metering_3,col = 'blue')
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lwd=c(1,1,1)
       )
dev.off()     
