#install.packages("bigstatsr")
#install.packages("ggplot2")
#install.packages("tidyverse")

library(ggplot2)
library(bigstatsr)

makeQQPlot <- function(data){
  
  #miesiace jako nazwy
  foresty$month <- month.abb[foresty$month]
  
  
  ##wilgotnosc materialow palnych
  png(filename= "plotsImages/QQPlot/QQPlot-1.png")
  qplot_wmp <- ggplot(foresty, aes(sample = DMC)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Wilgotnosc materialow palnych",
         x = "Teoretyczna",
         y = "Wilgotnosc")
  dev.off()
  
  #kolorowy
  png(filename= "plotsImages/QQPlot/QQPlot-2.png")
  qplot_wmp1 <- ggplot(foresty, aes(sample = DMC, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+
    labs(title = "Wilgotnosc materialow palnych w danym miesiacu",
         x = "Teoretyczna",
         y = "Wilgotnosc",
         colour = "Miesiace")
  dev.off()
  
  png(filename= "plotsImages/QQPlot/QQPlot-3.png")
  qplot_wmp2 <- ggplot(foresty, aes(sample = log(area), group = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Wilgotnosc materialow palnych w danym miesiacu",
         x = "Teoretyczna",
         y = "Wilgotnosc",
         colour = "Miesiace")+
    facet_wrap(~month, scale="free_y")
  dev.off()
  ######################################  ######################################
  ######################################  ######################################
  
  
  ##obszar
  png(filename= "plotsImages/QQPlot/QQPlot-4.png")
  qplot_ob <- ggplot(foresty, aes(sample = log(area))) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Spalony obszar w skali logarytmicznej",
         x = "Teoretyczny",
         y = "Obszar(ha)")
  dev.off()
  
  
  #kolorowy
  png(filename= "plotsImages/QQPlot/QQPlot-5.png")
  qplot_ob1 <- ggplot(foresty, aes(sample = log(area), color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Spalony obszar w skali logarytmicznej w danym miesiacu",
         x = "Teoretyczny",
         y = "Obszar(ha)",
         colour = "Miesiace")
  dev.off()
  
  
  png(filename= "plotsImages/QQPlot/QQPlot-6.png")
  qplot_ob2 <- ggplot(foresty, aes(sample = log(area), group = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Spalony obszar w skali logarytmicznej w danym miesiacu",
         x = "Teoretyczny",
         y = "Obszar(ha)",
         colour = "Miesiace")+
  facet_wrap(~month, scale="free_y")
  dev.off()

  ######################################  ######################################
  ######################################  ######################################
  
  #miesiace jako liczby
  foresty$month <- match(foresty$month, month.abb)
}
