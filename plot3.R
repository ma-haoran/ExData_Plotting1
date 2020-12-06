setwd("C:/Users/Apple/Desktop/RStudio Tour/assignment/project4.1")
file<-read.table("household_power_consumption.txt",head=TRUE,sep = ';')

data<-file[file$Date %in% c("1/2/2007","2/2/2007"),]

datetime<-strptime(paste(data$Date,data$Time,sep = " "), 
                   "%d/%m/%Y %H:%M:%S")
sm1<-as.numeric(data$Sub_metering_1)
sm2<-as.numeric(data$Sub_metering_2)
sm3<-as.numeric(data$Sub_metering_3)

png("plot3.png",width = 480,height = 480)
plot(datetime,sm1,type = "l",col="black",
     xlab = "",ylab = "Energy Sub metering")
lines(datetime,sm2,type = "l",col="red",
     xlab = "",ylab = "Energy Sub metering")
lines(datetime,sm3,type = "l",col="blue",
     xlab = "",ylab = "Energy Sub metering")
legend("topright",lty=1,legend = c("Sub_metering_1",
                            "Sub_metering_2",
                            "Sub_metering_3"),
       col = c("black","red","blue"))
dev.off()



