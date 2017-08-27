source("Read_data.R")

attach(household)

png(filename = "plot2.png", width = 480, height = 480)
plot(Datetime,Global_active_power,xlab = "",ylab = "Global Active Power (kilowatts)",type="n")
lines(Datetime,Global_active_power)
dev.off()     
