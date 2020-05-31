> power<-read.table("household_power_consumption.txt", 
+                  header = TRUE, 
+                  sep = ";", 
+                  colClasses = c("character","character", rep("numeric",7)), 
+                  na.strings = "?")

> power_sub<-subset(power,power$Date=="1/2/2007" | power$Date == "2/2/2007")

hist(power_sub$Global_active_power,
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.copy(png,file="plot1.png")
dev.off()

