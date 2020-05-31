> power<-read.table("household_power_consumption.txt", 
+                  header = TRUE, 
+                  sep = ";", 
+                  colClasses = c("character","character", rep("numeric",7)), 
+                  na.strings = "?")

> power_sub<-subset(power,power$Date=="1/2/2007" | power$Date == "2/2/2007")

par(mfcol = c(2, 2))


plot(power_sub$DateTime,
     power_sub$Global_active_power,
     type = "line",
     xlab = "",
     ylab = "Global Active Power")



plot(power_sub$DateTime,
     power_sub$Sub_metering_1,
     "n",
     xlab = "",
     ylab = "Energy sub metering")

     points(power_sub$DateTime, power_sub$Sub_metering_1, type = "line")

     points(power_sub$DateTime,power_sub$Sub_metering_2, type = "line", col = "red")

     points(power_sub$DateTime, power_sub$Sub_metering_3, type = "line", col = "blue")


plot(power_sub$DateTime,
     power_sub$Voltage,
     type = "line",
     xlab = "datetime",
     ylab = "Voltage")

plot(power_sub$DateTime,
     power_sub$Global_reactive_power,
     type = "line",
     xlab = "datetime",
     ylab = "Global_reactive_power")

legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = c(1, 1, 1),
       bty = "n")

dev.copy(png,file="plot4.png")
dev.off()