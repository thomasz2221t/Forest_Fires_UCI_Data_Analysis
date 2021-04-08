boxAndWhisker <- function(foresty){
  
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
  
  #porównanie rozrzutu szybkosci rozprzestrzeniania sie ognia
  png(filename= "plotsImages/boxAndWhisker1D-1.png")
  boxplot(szybkosc, data= foresty, xlab = "Szybkosc rozprzestrzeniania sie ognia",
          main = "Porownanie rozrzutu szybkosci rozprzestrzeniania sie ognia", horizontal=TRUE,col="blue",
          border = "grey25",range = TRUE, outline = TRUE)
  dev.off()
  
  
  #porownanie rozrzutu wzglednej wilgoci
  png(filename= "plotsImages/boxAndWhisker1D-2.png")
  boxplot(wilgoc, data = foresty, xlab = "Wzgledna wilgoc [%]", main = "Porownanie rozrzutu wzglednej wilgoci ", 
          horizontal=TRUE,col="yellow", border = "grey25",range = TRUE, outline = TRUE)
  dev.off()
  
  #porownanie rozrzutu powierzchni wypalonej przez ogien
  png(filename= "plotsImages/boxAndWhisker1D-3.png")
  boxplot(powierzchnia, data = foresty, xlab = "Powierzchnia wypalona przez ogien w hektarach", 
          main = "Porownanie rozrzutu powierzchni wypalonej przez ogien ", horizontal=TRUE,col="red", 
          border = "black",range = TRUE, outline = TRUE)
  dev.off()
  
  #porownanie rozrzutu opadow mm/m^2
  png(filename= "plotsImages/boxAndWhisker1D-4.png")
  boxplot(deszcz, data = foresty, xlab = "Opady [mm/m^2]", main = "Porownanie rozrzutu zmierzonych opadow deszczu", 
          horizontal = TRUE, col = "purple", border = "black",range = TRUE, outline = TRUE)
  dev.off()
  
  #porownanie rozrzutu predkosci wiatru
  png(filename= "plotsImages/boxAndWhisker1D-5.png")
  boxplot(wiatr, data = foresty, xlab = "Predkosci wiatru [km/h]", main = "Porownanie rozrzutu predkosci wiatru ", 
          horizontal=TRUE,col="green", border = "grey25",range = TRUE, outline = TRUE)
  dev.off()
  
  #porownanie rozrzutu temperatury
  png(filename= "plotsImages/boxAndWhisker1D-6.png")
  boxplot(temperatura, data = foresty, xlab = "Temperatura w stopniach Celsiusza", main = "Porownanie rozrzutu  temperatury", 
          horizontal=TRUE,col="aquamarine", border = "grey25",range = TRUE, outline = TRUE)
  dev.off()
  
  #porownanie rozrzutu parametru DC (tempertury deszczu)
  png(filename= "plotsImages/boxAndWhisker1D-7.png")
  boxplot(temp_deszcz, data = foresty, xlab = "Parametr DC okreslajacy temperature deszczu", 
          main = "Porownanie rozrzutu parametru DC okreslajacego temperature deszczu", 
          horizontal=TRUE,col="cadetblue1", border = "grey2",range = TRUE, outline = TRUE)
  dev.off()
  
  #porownanie rozrzutu parametru DMC wplywajacego na rozprzestrzenianie sie ognia
  png(filename= "plotsImages/boxAndWhisker1D-8.png")
  boxplot(temp_wilgoc_deszcz, data = foresty, xlab = "Parametr DMC", 
          main = "Porownanie rozrzutu parametru DMC majacego wplyw na rozprzestrzenianie sie ognia", 
          horizontal=TRUE,col="darkgoldenrod1", border = "grey2",range = TRUE, outline = TRUE)
  dev.off()
  
  #porownanie rozrzutu parametru FFMC
  png(filename= "plotsImages/boxAndWhisker1D-9.png")
  boxplot(param_ffmc, data = foresty, xlab = "Parametr FFMC - Fine Fuel Moisture Code", 
          main = "Porownanie rozrzutu parametru FFMC majacego wplyw na zaplon i rozprzestrzenianie sie ognia", 
          horizontal=TRUE,col="darkorchid1", border = "grey2",range = TRUE, outline = TRUE)
  dev.off()
  
  #umieszczenie wykresow razem
  #wykres rozrzutu temperatury i szybkosci wiatru
  png(filename= "plotsImages/boxAndWhisker1D-10.png")
  boxplot(temperatura, wiatr, data= foresty, xlab = "Temperatura w stopniach Celcjusza", ylab = "Szybkosc wiatru [km/h]",
          main = "Wykres rozrzutu temperatury i szybkosci wiatru", horizontal=TRUE,col="darkolivegreen1",
          border = "black")
  dev.off()
}
