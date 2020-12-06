setwd("C:/Users/Apple/Desktop/RStudio Tour/assignment/project4.1")
file<-read.table("household_power_consumption.txt",head=TRUE,sep = ';')

data<-file[file$Date %in% c("1/2/2007","2/2/2007"),]

datetime<-strptime(paste(data$Date,data$Time,sep = " "), 
                   "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(data$Global_active_power)

png("plot2.png", width=480, height=480)
plot(datetime,globalActivePower,type="l",
     ylab="Global Active Power (kilowatts)",xlab = "")
dev.off()
