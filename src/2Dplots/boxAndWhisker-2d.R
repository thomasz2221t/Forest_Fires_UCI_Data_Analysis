boxAndWhisker2d <- function(foresty){
  
  #FFMC - rain relative humidity temperatur wind wplywa 
  #na zaplon i rozpsrzestrzenianie sie ognia
  #DMC - rain relative humidity temperatur
  #DC - rain temperature
  #DMC i DC wplywa na gestosc ognia
  #ISI - powiazanie FFMC i wiatru <- predkosc 
  #rozprzestrzeniania sie ognia
  
  szybkosc <- c(foresty$ISI)
  wilgoc <- c(foresty$RH)
  powierzchnia <- c(foresty$area)
  deszcz <- c(foresty$rain)
  wiatr <- c(foresty$wind)
  temperatura <-c(foresty$temp)
  temp_deszcz <- c(foresty$DC)
  temp_wilgoc_deszcz <-c(foresty$DMC)
  param_ffmc <- c(foresty$FFMC)




#dwuparametrowe? Czy to jest Box and Whiskers Plots wzgledem klasy?
#wykres rozrzutu szybkosci rozprzestrzeniania sie ognia dla odnotowanej wzglednej wilgoci
png(filename= "plotsImages/boxandwhisker2D-1.png")
boxplot(szybkosc ~ wilgoc, data= foresty, xlab = "Szybkosc rozprzestrzania sie ognia", ylab = "Relatywna wilgoc",
        main = "Predkosc rozprzestrzeniania sie ognia ISI dla wzglednej wilgoci RH", horizontal=TRUE,col="cyan",
        border = "black")
dev.off()

#wykres rozrzutu temperatury dla szybkosci wiatru
png(filename= "plotsImages/boxandwhisker2D-2.png")
boxplot(temperatura ~ wiatr, data= foresty, xlab = "Temperatura w stopniach Celcjusza", ylab = "Szybkosc wiatru [km/h]",
        main = "Wykres rozrzutu temperatury i szybkosci wiatru", horizontal=TRUE,col="cadetblue2",
        border = "black")
dev.off()

#wykres rozrzutu powierzchni wypalonej dla ISI - predkosci rozprzestrzeniania sie ognia
png(filename= "plotsImages/boxandwhisker2D-3.png")
boxplot(szybkosc ~ powierzchnia, data= foresty, xlab = "Parametr ISI (Szybkosc rozprzestrzania sie ognia)", ylab = "Powierzchnia wypalona przez ogien w hektarach",
        main = "Wykres rozrzutu powierzchni wypalonej dla predkosci rozprzestrzeniania sie ognia", horizontal=TRUE,col="firebrick2",
        border = "gray4")
dev.off()

#wykres rozrzutu predkosci rozprzestrzeniania sie ognia (parametr ISI) dla powierzchni wypalonej przez ogien
png(filename= "plotsImages/boxandwhisker2D-4.png")
boxplot(powierzchnia ~ szybkosc, data= foresty, xlab = "Powierzchnia wypalona przez ogien w hektarach", ylab = "Parametr ISI (Szybkosc rozprzestrzania sie ognia)",
        main = "Wykres rozrzutu predkosci rozprzestrzeniania sie ognia dla powierzchni wypalonej", horizontal=TRUE,col="red",
        border = "gray4")
dev.off()

#wykres rozrzutu wilogci dla parametru DC wplywajacego na gestosc ognia
png(filename= "plotsImages/boxandwhisker2D-5.png")
boxplot(wilgoc ~ temp_deszcz, data= foresty, xlab = "Wzgledna wilgotnosc [%]", ylab = "Parametr DC wplywajacy na gestosc ognia",
        main = "Wykres rozrzutu wzglednej wilgotnosci powietrza dla parametru DC wplywajacego na gestosc ognia", horizontal=TRUE,col="coral1",
        border = "gray1")
dev.off()

#wykres rozrzutu FFMC - zaplon i rozprzestrzenianie sie dla parametru DMC - gestosc ognia
png(filename= "plotsImages/boxandwhisker2D-6.png")
boxplot(param_ffmc ~ temp_wilgoc_deszcz, data= foresty, xlab = "Parametr FFMC - Fine Fuel Moisture Code", 
        ylab = "Parametr DMC - Duff Moisture Code", 
        main = "Wykres rozrzutu parametru FFMC wpylwajacego na zaplon i 
        rozprzestrzenianie sie ognia  dla parametru DMC wplywajacego na gestosc ognia", 
        horizontal=TRUE,col="bisque1",
        border = "gray1")
dev.off()

}
