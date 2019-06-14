#Read data

library(data.table)

data<-read.table('~/Courses/Exploratory Data Analysis/Week1/household_power_consumption.txt',header=TRUE,sep = ';',na='?',
                 colClasses=c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

data<-subset(data,data$Date=='1/2/2007'|data$Date=='2/2/2007')

data$DateTime<-strptime(paste(data$Date,data$Time),'%d/%m/%Y %H:%M:%S')


#Plot3

png('plot3.png',width=480,height=480)

plot(data$DateTime,data$Sub_metering_1,xlab='',ylab='Energy sub metering',type='l')
lines(data$DateTime,data$Sub_metering_2,col='red')
lines(data$DateTime,data$Sub_metering_3,col='blue')
legend('topright',lwd=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))

dev.off()