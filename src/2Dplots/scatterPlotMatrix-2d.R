makeScatterPlotMatrix2d <- function(foresty){

my_cols <- c("#00AFBB", "#E7B800", "#FC4E07")
my_cols2 <- c("red", "green3", "blue")

png(filename= "plotsImages/scatterPlotMatrix2D-1.png")
pairs(~month+day, data=foresty,
      labels=c("Miesiac", "Dzien"),
      main="Wykres scatterplot matrix zestawienie: Miesiac i dzien", panel=panel.smooth, col=my_cols2)
dev.off()

png(filename= "plotsImages/scatterPlotMatrix2D-2.png")
pairs(~rain+temp+wind+area, data=foresty,
      labels=c("Deszcz", "Temperatura","Wiatr","Powierzchnia"),
      main="Wykres scatterplot matrix zestawienie: Pogody i obszaru", panel=panel.smooth, col=my_cols)
dev.off()

png(filename= "plotsImages/scatterPlotMatrix2D-3.png")
pairs(~ISI+DMC+DC+FFMC, data=foresty,
      labels=c("ISI", "DMC","DC", "FFMC"),
      main="Wykres scatterplot matrix zestawienie: ISI, DMC, DC, FFMC", panel=panel.smooth, col=my_cols2)
dev.off()

png(filename= "plotsImages/scatterPlotMatrix2D-4.png")
pairs(~rain+temp+wind, data=foresty,
      labels=c("Deszcz", "Temperatura","Wiatr"),
      main="Wykres scatterplot matrix zestawienie: Pogodowe", panel=panel.smooth, col=my_cols)
dev.off()
    
}
