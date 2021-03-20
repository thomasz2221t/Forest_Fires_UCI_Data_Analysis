library(mlbench)
library(tidyverse)
library(Amelia)

foresty <- read.csv(file = 'forestfires.csv')
forestyblad <-read.csv(file = 'forestfireskopia.csv')

foresty$month <- recode(foresty$month, "jan"=1, "feb"=2, "mar"=2, "apr"=4,"may"=5, "jun"=6, "jul"=7, "aug"=8,"sep"=9, "oct"=10, "nov"=11, "dec"=12)
foresty$day <- recode(foresty$day, "mon"=1, "tue"=2, "wed"=2, "thu"=4,"fri"=5, "sat"=6, "sun"=7)

# Create separate boxplots for each attribute
#Months and days
par(mfrow=c(1,6),mfcol=c(1,2))
for(i in 3:4) {
  boxplot(foresty[,i], main=names(foresty)[i])
}

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