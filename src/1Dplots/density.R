makeDensity <- function(foresty)
{
 
#Wykres gestosci dla dni 
png(filename= "plotsImages/densityplot1.png")
gestosc <- density(foresty$day)
plot(gestosc, frame = TRUE, col = "steelblue", main = "Gestosc pozarow dla dni tygodnia", sub="N = dni tygodnia")
polygon(gestosc, col = "steelblue", bor = "black")
dev.off()

#Wykres gestosci dla miesiecy
png(filename= "plotsImages/densityplot2.png")
gestosc <- density( foresty$month)
plot(gestosc, frame = TRUE, col = "red", main = "Gestosc pozarow dla miesiecy", sub="N = miesiace")
polygon(gestosc, col = "red")
dev.off()

#Wykres gestosci dla wiatru
png(filename= "plotsImages/densityplot3.png")
gestosc <- density(foresty$wind)
plot(gestosc, frame = TRUE, col = "mediumpurple4", main = "Wykres gestosci dla wiatru", sub="Jednostka: km/h")
polygon(gestosc, col = "mediumpurple4")
dev.off()

#Wykres gestosci dla temperatury
png(filename= "plotsImages/densityplot4.png")
gestosc <- density(foresty$temp)
plot(gestosc, frame = TRUE, col = "violetred", main = "Wykres gestosci dla temperatury", sub="Stopnie Celucjusza: od 2.2 do 33.30")
polygon(gestosc, col = "violetred")
dev.off()
 
#Wykres gestosci dla materialow palnych
png(filename= "plotsImages/densityplot5.png")
gestosc <- density(foresty$FFMC)
plot(gestosc, frame = TRUE, col = "blue", main = "Wykres gestoci materialow palnych", sub="Wykres gestosci")
polygon(gestosc, col = "blue")
dev.off()

#Wykres gestosci dla gestosc paliw lesnych sciolki
png(filename= "plotsImages/densityplot6.png")
gestosc <- density(foresty$DMC)
plot(gestosc, frame = TRUE, col = "red", main = "Wykres gestoci paliw lesnych sciolki")
polygon(gestosc, col = "red")
dev.off()

#Wykres gestosci dla wilgotnosci podloza
png(filename= "plotsImages/densityplot7.png")
gestosc <- density(foresty$DC)
plot(gestosc, frame = TRUE, col = "cyan", main = "Wykres gestosci wilgotnosci podloza")
polygon(gestosc, col = "cyan")
dev.off()
 
#Wykres gestosci dla rozprzestrzenia sie ognia we wczesnej fazie pozaru
png(filename= "plotsImages/densityplot8.png")
gestosc <- density(foresty$ISI)
plot(gestosc, frame = TRUE, col = "violetred", main = "Wykres gestosci rozprzestrzenia sie ognia we wczesnej fazie pozaru")
polygon(gestosc, col = "violetred")
dev.off()

#Wykres gestosci dla wilgotnosci wzglednej
png(filename= "plotsImages/densityplot9.png")
gestosc <- density(foresty$RH)
plot(gestosc, frame = TRUE, col = "blue", main = "Wykres gestosci wilgotnosci wzglednej",sub ="procentowo: 15% - 100%")
polygon(gestosc, col = "blue")
dev.off()
}

