my_data<- read.table("C:/User/Alex/Documents/R/WD/household_power_consumption.txt")
summary(my_data)
str(my_data)
plot_1 <- hist(my_data$Global_active_power, mydata$frequency, col = "red")
plot_2 <- plot(my_data$global_active_power, , type="l", main='type="l"')   ##How do you add Thurs - Sat in plot for x axis, field is datetime, found this online - df$Date <- as.Date(df$Date, "%d-%m-%Y")
plot_3 <- plot(my_data$energy_to_metering, my_data$sub_metering, type="l", main='type="l") - ##need to split three sub metering by colors sub_metering_1, col= "black", sub_metering_2, col="red", sub_metering_3, col="blue"
               
plot_4 <- par(mfrow = c(2, 2), mar = (4,4,2,1) ## how do I create a 4 piece plot of the exact ones I created above - repeat same code?
##plot 4 in the 4 piece is plot(my_data$global_active_power, my_data$datetime) #just black