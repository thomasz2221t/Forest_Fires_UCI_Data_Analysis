library(ggplot2)
library(tidyverse)

makeDensity2d <- function(foresty){

#wykres gestosci wiatru wzgledem temperatury
ggplot(foresty, aes(x=wind, y=temp) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  ggtitle("Wykres gestosci wiatru wzgledem temperatury")+
  labs(x="wiatr",y="temepratura")

#wykres gestosci wiatru wzgledem miesiecy
ggplot(foresty,aes(x=wind, y=month) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  ggtitle("Wykres gestosci wiatru wzgledem miesiecy")+
  labs(x="wiatr",y="miesiace")

#wykres gestosci temperatury wzgledem miesiecy
ggplot(foresty, aes(x=temp, y=month) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  ggtitle("Wykres gestosci temperatury wzgledem miesiecy")+
  labs(x="temperatura",y="miesiace")

#wykres gestosci rozprzestrzenia sie ognia we wczesnej fazie pozaru wzgledem wiatru
ggplot(foresty, aes(x=ISI, y=wind) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  ggtitle("Wykres gestosci rozprzestrzenia sie ognia we wczesnej fazie pozaru wzgledem wiatru")+
  labs(x="rozprzestrzenie sie ognia we wczesnej fazie pozaru",y="wiatr")

#wykres gestosci wilgotnosci wzglednej wzgledem temperatury
ggplot(foresty, aes(x=RH, y=temp) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")+
  ggtitle("Wykres gestosci wilgotnosci wzglednej wzgledem temperatury")+
  labs(x="wilgotnosc wzgledna",y="temperatura")
}
