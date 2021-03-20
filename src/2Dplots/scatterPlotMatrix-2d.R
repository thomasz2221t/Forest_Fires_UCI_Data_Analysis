makeScatterPlotMatrix2d <- function(foresty){

my_cols <- c("#00AFBB", "#E7B800", "#FC4E07")
my_cols2 <- c("red", "green3", "blue")

pairs(~rain+temp+wind+area, data=foresty,
      labels=c("Deszcz", "Temperatura","Wiatr","Powierzchnia"),
      main="Wykres scatterplot matrix zestawienie: Pogody i obszaru", panel=panel.smooth, col=my_cols2)

pairs(~rain+temp+wind, data=foresty,
      labels=c("Deszcz", "Temperatura","Wiatr"),
      main="Wykres scatterplot matrix zestawienie: Pogodowe", panel=panel.smooth, col=my_cols)
    
}
