setwd("C:/Users/Apple/Desktop/RStudio Tour/assignment/project4.1")
file<-read.table("household_power_consumption.txt",head=TRUE,sep = ';')

data<-file[file$Date %in% c("1/2/2007","2/2/2007"),]
png("plot1.png",width = 480,height = 480)
with(data,hist(as.numeric(Global_active_power),
               col='red',xlab = "Global Active Power(kilowatts)",
               main = "Global Active Power"))
dev.off()
