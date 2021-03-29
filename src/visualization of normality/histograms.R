makeHistograms<-function(data)
{

Temperature <- data$temp
png(filename= "plotsImages/histogram-1.png")
hist(Temperature,
     ylim=c(0,200),
     xlab = "Temperature in Celsius degree",
     ylab="Number of apperances",
     col="red")
dev.off()

Wind <- data$wind

png(filename= "plotsImages/histogram-2.png")
hist(Wind,
     xlim=c(0,11),
     ylim=c(0,200),
     xlab = "Value of wind [m/s]",
     ylab="Number of apperances",
     col="green")
dev.off()

DMC <- data$DMC

png(filename= "plotsImages/histogram-3.png")
hist(DMC,
     xlim=c(0,320),
     ylim=c(0,100),
     xlab = "Code of litter humidity from FWI System",
     ylab="Number of apperances",
     col="orange")
dev.off()

RH <- data$RH

png(filename= "plotsImages/histogram-4.png")
hist(RH,
     main=paste("Histogram of relative humidity"),     
     xlim=c(0,100),
     ylim=c(0,150),
     xlab = "Relative humidity [%]",
     ylab="Number of apperances",
     col="blue")
dev.off()

DC <- data$DC

png(filename= "plotsImages/histogram-5.png")
hist(DC,
     main=paste("Histogram of drought code index"),     
     xlim=c(0,1000),
     ylim=c(0,200),
     xlab = "Drought code index from FWI System",
     ylab="Number of apperances",
     col="brown")
dev.off()
}
