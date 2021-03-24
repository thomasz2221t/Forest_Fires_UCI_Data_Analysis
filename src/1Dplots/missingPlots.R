library(mlbench)
library(tidyverse)
library(Amelia)

makeMissingPlotsAndBoxAndWhiskerPlots <-function(foresty)
{
  
forestyblad <-read.csv(file = 'data/forestfireskopia.csv')

# Create separate boxplots for each attribute
#Months and days
png(filename= "plotsImages/myplot1.png")
par(mfrow=c(1,6),mfcol=c(1,2))
for(i in 3:4) {
  boxplot(foresty[,i], main=names(foresty)[i])
}
dev.off()

#FFMC, DMC, DC and ISI
par(mfrow=c(1,6))
for(i in 5:8) {
  boxplot(foresty[,i], main=names(foresty)[i])
}

#tem, RH, wind, rain and area
par(mfrow=c(1,6))
for(i in 9:13) {
  boxplot(foresty[,i], main=names(foresty)[i])
}


#Missing plot incorrect values in csv file
missmap(forestyblad, col=c("black", "grey"), legend=FALSE,main = "Brakujce wartosci (celowe bledy)")

#Missing plot original csv file
missmap(foresty, col=c("black", "grey"), legend=FALSE,main = "Brakujce wartosci")
}
