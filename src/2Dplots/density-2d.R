library(ggplot2)
library(tidyverse)

foresty <- read.csv(file = 'forestfires.csv')

#zmienienie formatu z stringa na calkowite dla miesiacy i dni
foresty$month <- recode(foresty$month, "jan"=1, "feb"=2, "mar"=2, "apr"=4,"may"=5, "jun"=6, "jul"=7, "aug"=8,"sep"=9, "oct"=10, "nov"=11, "dec"=12)
foresty$day <- recode(foresty$day, "mon"=1, "tue"=2, "wed"=2, "thu"=4,"fri"=5, "sat"=6, "sun"=7)

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