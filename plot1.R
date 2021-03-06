data<-read.table("./data/household_power_consumption.txt",sep=";",head=TRUE)
datasub<-subset(data,as.Date(data$Date,"%d/%m/%Y")=="2007-02-01"|as.Date(data$Date,"%d/%m/%Y")=="2007-02-02")
hist(as.numeric(levels(datasub$Global_active_power)[datasub$Global_active_power]),xlab="Global Acitve Power (kilowatts)",main="Global Active Power",col="red")
png('plot1.png',width=480,height=480,units="px")
dev.off()