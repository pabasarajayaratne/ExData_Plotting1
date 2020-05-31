> power<-read.table("household_power_consumption.txt", 
+                  header = TRUE, 
+                  sep = ";", 
+                  colClasses = c("character","character", rep("numeric",7)), 
+                  na.strings = "?")

> power_sub<-subset(power,power$Date=="1/2/2007" | power$Date == "2/2/2007")

power_sub$Date <- as.Date(power_sub$Date, format = "%d/%m/%Y")
power_sub$DateTime <- as.POSIXct(paste(power_sub$Date, power_sub$Time))

plot(power_sub$DateTime, power_sub$Global_active_power, 
     type="line", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")

dev.copy(png,file="plot2.png")
dev.off()