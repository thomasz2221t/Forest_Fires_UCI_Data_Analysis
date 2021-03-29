library(moments)
library(gridExtra)

statistic <- function(foresty){ 
  
median(data$month)
median(data$day)

mediana <- c(
median(data$X),
median(data$Y),
median(data$FFMC),
median(data$DMC),
median(data$DC),
median(data$ISI),
median(data$temp),
median(data$RH),
median(data$wind),
median(data$rain),
median(data$area)
)
  
srednia <- c(
mean(data$X),
mean(data$Y),
mean(data$FFMC),
mean(data$DMC),
mean(data$DC),
mean(data$ISI),
mean(data$temp),
mean(data$RH),
mean(data$wind),
mean(data$rain),
mean(data$area)
)
  
skosnosc <- c(
skewness(data$X),
skewness(data$Y),
skewness(data$FFMC),
skewness(data$DMC),
skewness(data$DC),
skewness(data$ISI),
skewness(data$temp),
skewness(data$RH),
skewness(data$wind),
skewness(data$rain),
skewness(data$area)
)

kurtoza <- c(
kurtosis(data$X),
kurtosis(data$Y),
kurtosis(data$FFMC),
kurtosis(data$DMC),
kurtosis(data$DC),
kurtosis(data$ISI),
kurtosis(data$temp),
kurtosis(data$RH),
kurtosis(data$wind),
kurtosis(data$rain),
kurtosis(data$area)
)
  
Typ <- c("X","Y","FFMC","DMC","DC","ISI","temp","RH","wind","rain","area")
Mediana <- mediana
Srednia <- srednia
Skosnosc <- skosnosc
Kurtoza <- kurtoza
tabela <- data.frame(Typ, Mediana, Srednia, Skosnosc, Kurtoza)
 
png("statystykaOpisowa.png", height = 50*nrow(tabela), width = 200*ncol(tabela))
grid.table(tabela)
dev.off()
}
