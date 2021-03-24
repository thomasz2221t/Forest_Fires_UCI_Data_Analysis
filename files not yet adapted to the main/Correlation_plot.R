library(corrplot)

correlationPlot<-function(dane){

#FFMC - rain relative humidity temperatur wind wplywa 
#na zaplon i rozpsrzestrzenianie sie ognia
#DMC - rain relative humidity temperatur
#DC - rain temperature
#DMC i DC wplywa na gestosc ognia
#ISI - powiazanie FFMC i wiatru <- predkosc 
#rozprzestrzeniania sie ognia


temperatura <- c(dane$temp)
wilgotnosc <- c(dane$RH)
wiatr <- c(dane$wind)
obszar <- c(dane$area)
deszcz <- c(dane$rain)
predkosc_ISI <- c(dane$ISI)
gestosc_ognia_DC <- c(dane$DC)
zaplon_FFMC <- c(dane$FFMC)

#policzona korelacja lolXD
korelacja <- cor(temperatura, wilgotnosc, use = "everything", method = "pearson")

mac <- matrix(temperatura, wilgotnosc)

korelacja2 <- cor(mac, use = "everything", method = "pearson")

#Macierz korelacji temperatury od wilgotnosci
corrplot(korelacja2, method = c("number"), type = "upper", add = FALSE, col = c ("darkgoldenrod1","darkorchid1"), 
         bg = "aquamarine", title = "Macierz korelacji temperatury i wilgotnosci", is.corr = FALSE,
         order = "hclust")
#W mac 2 wilgotnosc zamiast wilgoc zeby dzialalo
mac2 <- matrix(wilgoc, wiatr)
korelacja3 <- cor(mac2, use = "everything", method ="pearson")

#Macierz korelacji predkosc ISI i wiatru
corrplot(korelacja3, method = c("color"), type = "upper", add = FALSE, col = c ("blue","green"), 
         bg = "white", title = "Macierz ISI i wiatru"
         , is.corr = FALSE, order = "original")

mac3 <- matrix(wilgotnosc, gestosc_ognia_DC)
korelacja4 <- cor(mac3, use = "everything", method = "pearson")
#Macierz korelacji wilgotnosc od DC (wplywa na rozprzestrzenianie sie ognia)
corrplot(korelacja4, method = c("number"), type = "full", add = FALSE, col = c ("blue","darkmagenta"), 
         bg = "floralwhite", title = "Macierz korelacji predkosci rozprzestrzeniania sie ognia i obszaru"
         , is.corr = FALSE, order = "hclust")

mac4 <- matrix(zaplon_FFMC, wilgotnosc)
korelacja5 <- cor(mac4, use = "everything", method = "pearson")
#Macierz korelacji FFMC <- zaplon i rozprzestrzeniania sie ognia od wilgotnosc
corrplot(korelacja5, method = c("number"), type = "upper", add = FALSE, col = c ("coral2","lightskyblue"), 
         bg = "cornsilk", title = "Macierz korelacji parametru FFMC okreslajacego zaplon i rozprzestrzenianie 
         sie ognia i wilgotnosci", is.corr = FALSE, order = "original")

mac5 <- matrix(temperatura, gestosc_ognia_DC)
korelacja6 <- cor(mac5, use = "everything", method = "pearson")
#Macierz korelacji temperatury i obszaru
corrplot(korelacja6, method = c("number"), type = "upper", add = FALSE, col = c ("darkorange","seagreen"), 
         bg = "ivory", title = "Macierz korelacji temperatury i obszaru", is.corr = FALSE, order = "original")

}
