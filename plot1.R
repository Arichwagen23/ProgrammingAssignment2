data1<- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",
                 col.names = c( "Date", "Time", "Global_active_power","Global_reactive_power","Voltage",
                                "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                 skip = 66637,nrows=2879 , check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

data1$Date <- as.Date(data1$Date, format="%d/%m/%y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

# plot1
hist(as.numeric(data1$Global_active_power), main="Global Active Power", xlab= "Global Active Power (kilowatts)",
     ylab="Frequency", col="Red")
