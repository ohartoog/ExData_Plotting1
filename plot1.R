source("Read_data.R")

attach(household)

png(filename = "plot1.png", width = 480, height = 480)
hist(Global_active_power,
     col = 'red',
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power"
)

dev.off()     
