#Read data

library(data.table)

data<-read.table('~/Courses/Exploratory Data Analysis/Week1/household_power_consumption.txt',header=TRUE,sep = ';',na='?',
                 colClasses=c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

data<-subset(data,data$Date=='1/2/2007'|data$Date=='2/2/2007')

data$DateTime<-strptime(paste(data$Date,data$Time),'%d/%m/%Y %H:%M:%S')

#Plot1

png('plot1.png',width=480,height=480)

hist(data$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)')

dev.off()