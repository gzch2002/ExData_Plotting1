#The file "household_power_consumption.txt" was obtained from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip.
#It was unziped and saved in the working directory
conx1 <- file("household_power_consumption.txt", "r")
conx2 <- file("output.txt", "w")
tag <- c("^[12]/2/2007")
reg<-readLines(conx1,n=1)
writeLines(reg, conx2)
repeat {
  reg<- readLines(conx1, n=1)    
  if (length(reg) == 0) break
  if (regexec(tag, reg) < 1) next
  writeLines(reg, conx2)
}
close(conx1);close(conx2)
power_df<-read.csv("output.txt",sep=";",header=T)
x<-paste(power_df$Date,power_df$Time)
power_df$DateTime<-strptime(x, "%d/%m/%Y %H:%M:%S")