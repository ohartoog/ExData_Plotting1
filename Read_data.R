# load libraries
library(lubridate)

# set the language of the weekdays to English
Sys.setlocale("LC_TIME", "C")

# download the data unless already present
tmp <- tempfile()
if(!file.exists('./data')) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",tmp)
  unzip(tmp,exdir = './data')
}

# read data
data <- read.table("./data/household_power_consumption.txt",sep = ";",header = TRUE)

# transform to real datetimes
data$Datetime <- dmy_hms(paste(data$Date,data$Time))

# select relevant part
household <- subset(data,data$Datetime >= ymd_hms("2007-02-01 00:00:00") & data$Datetime <= ymd_hms("2007-02-02 23:59:59") )

# clean up
rm(data)

# convert the important variables to numerics
household$Global_active_power <- as.numeric(levels(household$Global_active_power))[household$Global_active_power] 
household$Global_reactive_power <- as.numeric(levels(household$Global_reactive_power))[household$Global_reactive_power] 

household$Sub_metering_1 <- as.numeric(levels(household$Sub_metering_1))[household$Sub_metering_1] 
household$Sub_metering_2 <- as.numeric(levels(household$Sub_metering_2))[household$Sub_metering_2] 
household$Sub_metering_3 <- as.numeric(levels(household$Sub_metering_3))[household$Sub_metering_3] 

household$Voltage <- as.numeric(levels(household$Voltage))[household$Voltage] 
