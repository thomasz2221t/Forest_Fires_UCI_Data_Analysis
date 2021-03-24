boxAndWhisker <- function(dane){

#FFMC - rain relative humidity temperatur wind wplywa 
#na zaplon i rozpsrzestrzenianie sie ognia
#DMC - rain relative humidity temperatur
#DC - rain temperature
#DMC i DC wplywa na gestosc ognia
#ISI - powiazanie FFMC i wiatru <- predkosc 
#rozprzestrzeniania sie ognia

szybkosc <- c(dane$ISI)
wilgoc <- c(dane$RH)
powierzchnia <- c(dane$area)
deszcz <- c(dane$rain)
wiatr <- c(dane$wind)
temperatura <-c(dane$temp)
temp_deszcz <- c(dane$DC)
temp_wilgoc_deszcz <-c(dane$DMC)
param_ffmc <- c(dane$FFMC)

#porównanie rozrzutu szybkosci rozprzestrzeniania sie ognia
boxplot(szybkosc, data= dane, xlab = "Szybkosc rozprzestrzeniania sie ognia",
        main = "Porownanie rozrzutu szybkosci rozprzestrzeniania sie ognia", horizontal=TRUE,col="blue",
        border = "grey25",range = TRUE, outline = TRUE)

#porownanie rozrzutu wzglednej wilgoci
boxplot(wilgoc, data = dane, xlab = "Wzgledna wilgoc [%]", main = "Porownanie rozrzutu wzglednej wilgoci ", 
        horizontal=TRUE,col="yellow", border = "grey25",range = TRUE, outline = TRUE)

#porownanie rozrzutu powierzchni wypalonej przez ogien
boxplot(powierzchnia, data = dane, xlab = "Powierzchnia wypalona przez ogien w hektarach", 
        main = "Porownanie rozrzutu powierzchni wypalonej przez ogien ", horizontal=TRUE,col="red", 
        border = "black",range = TRUE, outline = TRUE)

#porownanie rozrzutu opadow mm/m^2
boxplot(deszcz, data = dane, xlab = "Opady [mm/m^2]", main = "Porownanie rozrzutu zmierzonych opadow deszczu", 
        horizontal = TRUE, col = "purple", border = "black",range = TRUE, outline = TRUE)

#porownanie rozrzutu predkosci wiatru
boxplot(wiatr, data = dane, xlab = "Predkosci wiatru [km/h]", main = "Porownanie rozrzutu predkosci wiatru ", 
        horizontal=TRUE,col="green", border = "grey25",range = TRUE, outline = TRUE)

#porownanie rozrzutu temperatury
boxplot(temperatura, data = dane, xlab = "Temperatura w stopniach Celsiusza", main = "Porownanie rozrzutu  temperatury", 
        horizontal=TRUE,col="aquamarine", border = "grey25",range = TRUE, outline = TRUE)

#porownanie rozrzutu parametru DC (tempertury deszczu)
boxplot(temp_deszcz, data = dane, xlab = "Parametr DC okreslajacy temperature deszczu", 
        main = "Porownanie rozrzutu parametru DC okreslajacego temperature deszczu", 
        horizontal=TRUE,col="cadetblue1", border = "grey2",range = TRUE, outline = TRUE)

#porownanie rozrzutu parametru DMC wplywajacego na rozprzestrzenianie sie ognia
boxplot(temp_wilgoc_deszcz, data = dane, xlab = "Parametr DMC", 
        main = "Porownanie rozrzutu parametru DMC majacego wplyw na rozprzestrzenianie sie ognia", 
        horizontal=TRUE,col="darkgoldenrod1", border = "grey2",range = TRUE, outline = TRUE)

#porownanie rozrzutu parametru FFMC
boxplot(param_ffmc, data = dane, xlab = "Parametr FFMC - Fine Fuel Moisture Code", 
        main = "Porownanie rozrzutu parametru FFMC majacego wplyw na zaplon i rozprzestrzenianie sie ognia", 
        horizontal=TRUE,col="darkorchid1", border = "grey2",range = TRUE, outline = TRUE)



#umieszczenie wykresow razem
#wykres rozrzutu temperatury i szybkosci wiatru
boxplot(temperatura, wiatr, data= dane, xlab = "Temperatura w stopniach Celcjusza", ylab = "Szybkosc wiatru [km/h]",
        main = "Wykres rozrzutu temperatury i szybkosci wiatru", horizontal=TRUE,col="darkolivegreen1",
        border = "black")



#dwuparametrowe? Czy to jest Box and Whiskers Plots wzgledem klasy?
#wykres rozrzutu szybkosci rozprzestrzeniania sie ognia dla odnotowanej wzglednej wilgoci
boxplot(szybkosc ~ wilgoc, data= dane, xlab = "Szybkosc rozprzestrzania sie ognia", ylab = "Relatywna wilgoc",
        main = "Predkosc rozprzestrzeniania sie ognia ISI dla wzglednej wilgoci RH", horizontal=TRUE,col="cyan",
        border = "black")

#wykres rozrzutu temperatury dla szybkosci wiatru
boxplot(temperatura ~ wiatr, data= dane, xlab = "Temperatura w stopniach Celcjusza", ylab = "Szybkosc wiatru [km/h]",
        main = "Wykres rozrzutu temperatury i szybkosci wiatru", horizontal=TRUE,col="cadetblue2",
        border = "black")

#wykres rozrzutu powierzchni wypalonej dla ISI - predkosci rozprzestrzeniania sie ognia
boxplot(szybkosc ~ powierzchnia, data= dane, xlab = "Parametr ISI (Szybkosc rozprzestrzania sie ognia)", ylab = "Powierzchnia wypalona przez ogien w hektarach",
        main = "Wykres rozrzutu powierzchni wypalonej dla predkosci rozprzestrzeniania sie ognia", horizontal=TRUE,col="firebrick2",
        border = "gray4")

#wykres rozrzutu predkosci rozprzestrzeniania sie ognia (parametr ISI) dla powierzchni wypalonej przez ogien
boxplot(powierzchnia ~ szybkosc, data= dane, xlab = "Powierzchnia wypalona przez ogien w hektarach", ylab = "Parametr ISI (Szybkosc rozprzestrzania sie ognia)",
        main = "Wykres rozrzutu predkosci rozprzestrzeniania sie ognia dla powierzchni wypalonej", horizontal=TRUE,col="red",
        border = "gray4")

#wykres rozrzutu wilogci dla parametru DC wplywajacego na gestosc ognia
boxplot(wilgoc ~ temp_deszcz, data= dane, xlab = "Wzgledna wilgotnosc [%]", ylab = "Parametr DC wplywajacy na gestosc ognia",
        main = "Wykres rozrzutu wzglednej wilgotnosci powietrza dla parametru DC wplywajacego na gestosc ognia", horizontal=TRUE,col="coral1",
        border = "gray1")

#wykres rozrzutu FFMC - zaplon i rozprzestrzenianie sie dla parametru DMC - gestosc ognia
boxplot(param_ffmc ~ temp_wilgoc_deszcz, data= dane, xlab = "Parametr FFMC - Fine Fuel Moisture Code", 
        ylab = "Parametr DMC - Duff Moisture Code", 
        main = "Wykres rozrzutu parametru FFMC wpylwajacego na zaplon i 
        rozprzestrzenianie sie ognia  dla parametru DMC wplywajacego na gestosc ognia", 
        horizontal=TRUE,col="bisque1",
        border = "gray1")

}

