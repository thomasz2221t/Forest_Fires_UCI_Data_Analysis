makeHistograms<-function(data)
{

Temperature <- data$temp
hist(Temperature,
     ylim=c(0,200),
     xlab = "Temperature in Celsius degree",
     ylab="Number of apperances",
     col="red")


Wind <- data$wind
hist(Wind,
     xlim=c(0,11),
     ylim=c(0,200),
     xlab = "Value of wind [m/s]",
     ylab="Number of apperances",
     col="green")

DMC <- data$DMC
hist(DMC,
     xlim=c(0,320),
     ylim=c(0,100),
     xlab = "Code of litter humidity from FWI System",
     ylab="Number of apperances",
     col="orange")

RH <- data$RH
hist(RH,
     main=paste("Histogram of relative humidity"),     
     xlim=c(0,100),
     ylim=c(0,150),
     xlab = "Relative humidity [%]",
     ylab="Number of apperances",
     col="blue")

DC <- data$DC
hist(DC,
     main=paste("Histogram of drought code index"),     
     xlim=c(0,1000),
     ylim=c(0,200),
     xlab = "Drought code index from FWI System",
     ylab="Number of apperances",
     col="brown")
}