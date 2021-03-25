library(corrplot)

makeCorrelationPlots<-function(foresty)
  {
  
  #FFMC - rain relative humidity temperatur wind wplywa 
  #na zaplon i rozpsrzestrzenianie sie ognia
  #DMC - rain relative humidity temperatur
  #DC - rain temperature
  #DMC i DC wplywa na gestosc ognia
  #ISI - powiazanie FFMC i wiatru <- predkosc 
  #rozprzestrzeniania sie ognia
  
  
  temperatura <- c(foresty$temp)
  wilgotnosc <- c(foresty$RH)
  wiatr <- c(foresty$wind)
  obszar <- c(foresty$area)
  deszcz <- c(foresty$rain)
  predkosc_ISI <- c(foresty$ISI)
  gestosc_ognia_DC <- c(foresty$DC)
  zaplon_FFMC <- c(foresty$FFMC)
  
  #Macierz korelacji temperatury od wilgotnosci
  mac <- matrix(temperatura, wilgotnosc)
  korelacja2 <- cor(mac, use = "everything", method = "pearson")
  
  png(filename= "plotsImages/CorrelationPlot2D-1.png")
  corrplot(korelacja2, method = c("number"), type = "upper", add = FALSE, col = c ("darkgoldenrod1","darkorchid1"), 
           bg = "aquamarine", title = "Macierz korelacji temperatury i wilgotnosci", is.corr = FALSE,
           order = "hclust")
  dev.off()
  
  #Macierz korelacji wilgotnosci ISI i wiatru
  mac2 <- matrix(wilgotnosc, wiatr)
  korelacja3 <- cor(mac2, use = "everything", method ="pearson")
  
  png(filename= "plotsImages/CorrelationPlot2D-2.png")
  corrplot(korelacja3, method = c("color"), type = "upper", add = FALSE, col = c ("blue","green"), 
           bg = "white", title = "Macierz ISI i wiatru"
           , is.corr = FALSE, order = "original")
  dev.off()
  
  #Macierz korelacji wilgotnosc od DC (wplywa na rozprzestrzenianie sie ognia)
  mac3 <- matrix(wilgotnosc, gestosc_ognia_DC)
  korelacja4 <- cor(mac3, use = "everything", method = "pearson")
  
  png(filename= "plotsImages/CorrelationPlot2D-3.png")
  corrplot(korelacja4, method = c("number"), type = "full", add = FALSE, col = c ("blue","darkmagenta"), 
           bg = "floralwhite", title = "Macierz korelacji predkosci rozprzestrzeniania sie ognia i obszaru"
           , is.corr = FALSE, order = "hclust")
  dev.off()
  
  #Macierz korelacji FFMC <- zaplon i rozprzestrzeniania sie ognia od wilgotnosc
  mac4 <- matrix(zaplon_FFMC, wilgotnosc)
  korelacja5 <- cor(mac4, use = "everything", method = "pearson")
  
  png(filename= "plotsImages/CorrelationPlot2D-4.png")
  corrplot(korelacja5, method = c("number"), type = "upper", add = FALSE, col = c ("coral2","lightskyblue"), 
           bg = "cornsilk", title = "Macierz korelacji parametru FFMC okreslajacego zaplon i rozprzestrzenianie 
         sie ognia i wilgotnosci", is.corr = FALSE, order = "original")
  dev.off()
  
  #Macierz korelacji temperatury i obszaru
  mac5 <- matrix(temperatura, gestosc_ognia_DC)
  korelacja6 <- cor(mac5, use = "everything", method = "pearson")
  
  png(filename= "plotsImages/CorrelationPlot2D-5.png")
  corrplot(korelacja6, method = c("number"), type = "upper", add = FALSE, col = c ("darkorange","seagreen"), 
           bg = "ivory", title = "Macierz korelacji temperatury i obszaru", is.corr = FALSE, order = "original")
  
}