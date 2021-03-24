makeDensity <- function(foresty)
{
 
#Wykres gestosci dla dni
  
png(filename= "plotsImages/myplot.png")
gestosc <- density(foresty$day)
plot(gestosc, frame = TRUE, col = "steelblue", main = "Gestosc pozarow dla dni tygodnia", sub="N = dni tygodnia")
polygon(gestosc, col = "steelblue", bor = "black")
dev.off()

#Wykres gestosci dla miesiecy
gestosc <- density( foresty$month)
plot(gestosc, frame = TRUE, col = "red", main = "Gestosc pozarow dla miesiecy", sub="N = miesiace")
polygon(gestosc, col = "red")


#Wykres gestosci dla wiatru
gestosc <- density(foresty$wind)
plot(gestosc, frame = TRUE, col = "mediumpurple4", main = "Wykres gestosci dla wiatru", sub="Jednostka: km/h")
polygon(gestosc, col = "mediumpurple4")

#Wykres gestosci dla temperatury
gestosc <- density(foresty$temp)
plot(gestosc, frame = TRUE, col = "violetred", main = "Wykres gestosci dla temperatury", sub="Stopnie Celucjusza: od 2.2 do 33.30")
polygon(gestosc, col = "violetred")

#Wykres gestosci dla materialow palnych
gestosc <- density(foresty$FFMC)
plot(gestosc, frame = TRUE, col = "blue", main = "Wykres gestoci materialow palnych", sub="Wykres gestosci")
polygon(gestosc, col = "blue")

#Wykres gestosci dla gestosc paliw lesnych sciolki
gestosc <- density(foresty$DMC)
plot(gestosc, frame = TRUE, col = "red", main = "Wykres gestoci paliw lesnych sciolki")
polygon(gestosc, col = "red")

#Wykres gestosci dla wilgotnosci podloza
gestosc <- density(foresty$DC)
plot(gestosc, frame = TRUE, col = "cyan", main = "Wykres gestosci wilgotnosci podloza")
polygon(gestosc, col = "cyan")

#Wykres gestosci dla rozprzestrzenia sie ognia we wczesnej fazie pozaru
gestosc <- density(foresty$ISI)
plot(gestosc, frame = TRUE, col = "violetred", main = "Wykres gestosci rozprzestrzenia sie ognia we wczesnej fazie pozaru")
polygon(gestosc, col = "violetred")

#Wykres gestosci dla wilgotnosci wzglednej
gestosc <- density(foresty$RH)
plot(gestosc, frame = TRUE, col = "blue", main = "Wykres gestosci wilgotnosci wzglednej",sub ="procentowo: 15% - 100%")
polygon(gestosc, col = "blue")
}

