library(datasets)
source("load_data_by_date.R")
png(file="plot3.png", width=480, height=480, units="px", bg ="transparent")
with(power_df,plot(DateTime,Sub_metering_1, type="l", xlab="",ylab="Energy sub metering"))
with(power_df,lines(DateTime,Sub_metering_2, type="l",col="red"))
with(power_df,lines(DateTime,Sub_metering_3, type="l",col="blue"))
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lwd=1)
dev.off()