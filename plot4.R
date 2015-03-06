library(datasets)
source("load_data_by_date.R")
png(file="plot4.png", width=480, height=480, units="px", bg ="transparent")
par(mfrow = c(2, 2))
#top_left
with(power_df,plot(DateTime,Global_active_power, type="l", xlab="",ylab="Global Active Power (kilowatts)"))

#bottom_left
with(power_df,plot(DateTime,Voltage, type="l", xlab="datetime",ylab="Voltage"))

#top_right
with(power_df,plot(DateTime,Sub_metering_1, type="l", xlab="",ylab="Energy sub metering"))
with(power_df,lines(DateTime,Sub_metering_2, type="l",col="red"))
with(power_df,lines(DateTime,Sub_metering_3, type="l",col="blue"))
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lwd=1)

#bottom_right
with(power_df,plot(DateTime,Global_reactive_power, type="l", xlab="datetime"))

dev.off()