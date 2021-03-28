#install.packages("bigstatsr")
#install.packages("ggplot2")
#install.packages("tidyverse")

library(ggplot2)
library(bigstatsr)

makeQQPlot <- function(foresty){
  
  #miesiace jako nazwy
  foresty$month <- month.abb[foresty$month]
  
  
  ##wilgotnosc materialow palnych
  
  qplot_wmp <- ggplot(foresty, aes(sample = DMC)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Wilgotnosc materialow palnych",
         x = "Teoretyczna",
         y = "Wilgotnosc")
  ggsave("plotsImages/QQPlot-1.png")
  
  #kolorowy
  qplot_wmp1 <- ggplot(foresty, aes(sample = DMC, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+
    labs(title = "Wilgotnosc materialow palnych w danym miesiacu",
         x = "Teoretyczna",
         y = "Wilgotnosc",
         colour = "Miesiace")
  ggsave("plotsImages/QQPlot-2.png")
  
  qplot_wmp2 <- ggplot(foresty, aes(sample = log(area), group = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Wilgotnosc materialow palnych w danym miesiacu",
         x = "Teoretyczna",
         y = "Wilgotnosc",
         colour = "Miesiace")+
    facet_wrap(~month, scale="free_y")
  ggsave("plotsImages/QQPlot-3.png")
  ######################################  ######################################
  ######################################  ######################################
  
  
  ##obszar
  qplot_ob <- ggplot(foresty, aes(sample = log(area))) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Spalony obszar w skali logarytmicznej",
         x = "Teoretyczny",
         y = "Obszar(ha)")
  ggsave("plotsImages/QQPlot-4.png")
  
  
  #kolorowy
  qplot_ob1 <- ggplot(foresty, aes(sample = log(area), color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Spalony obszar w skali logarytmicznej w danym miesiacu",
         x = "Teoretyczny",
         y = "Obszar(ha)",
         colour = "Miesiace")
  ggsave("plotsImages/QQPlot-5.png")
  
  
  qplot_ob2 <- ggplot(foresty, aes(sample = log(area), group = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Spalony obszar w skali logarytmicznej w danym miesiacu",
         x = "Teoretyczny",
         y = "Obszar(ha)",
         colour = "Miesiace")+
    facet_wrap(~month, scale="free_y")
  ggsave("plotsImages/QQPlot-6.png")
  
  ######################################  ######################################
  ######################################  ######################################
  
  #miesiace jako liczby
  foresty$month <- match(foresty$month, month.abb)
}
