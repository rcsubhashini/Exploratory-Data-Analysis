rm(list = ls())
data <- read.table("C:/Users/r.c.subhashini/Desktop/Exploratory_Data_Analysis/ExData_Plotting1/household_power_consumption.txt", header = T,sep = ";", na.strings = "?")

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")

attach(data)
hist(Global_active_power, main = "Global Active Power",xlab = "Global Active Power (kilowatts)", col = "Red")

dev.copy(png, file = "C://Users//r.c.subhashini//Desktop//Exploratory_Data_Analysis//ExData_Plotting1//plot1.png", height = 480, width = 480)
dev.off()
detach(data)