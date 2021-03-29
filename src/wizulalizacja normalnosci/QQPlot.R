library(ggplot2)
library(bigstatsr)

makeQQPlot <- function(foresty){
  
  #miesiace jako nazwy
  foresty$month <- month.abb[foresty$month]
  foresty$month <- recode(foresty$month, "Jan"="Sty", "Feb"="Lut", "Mar"="Mar", "Apr"="Kwi","May"="Maj", "Jun"="Cze", "Jul"="Lip", "Aug"="Sie","Sep"="Wrz", "Oct"="Paz", "Nov"="Lis", "Dec"="Gru")
  
  ##wilgotnosc sciolki
  qplot_wmp <- ggplot(foresty, aes(sample = DMC)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Wilgotnosc sciolki",
         x = "Teoretyczna",
         y = "Wilgotnosc")
  ggsave("plotsImages/QQPlot-1.png", width = 9, height = 6, units = "in")
  
  #kolorowy
  qplot_wmp1 <- ggplot(foresty, aes(sample = DMC, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+
    labs(title = "Wilgotnosc sciolki w danym miesiacu",
         x = "Teoretyczna",
         y = "Wilgotnosc",
         colour = "Miesiace")
  ggsave("plotsImages/QQPlot-2.png", width = 9, height = 6, units = "in")
  
  qplot_wmp2 <- ggplot(foresty, aes(sample = DMC, group = month, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Wilgotnosc sciolki w danym miesiacu",
         x = "Teoretyczna",
         y = "Wilgotnosc",
         colour = "Miesiace")+
    facet_wrap(~month, scales="free_y")+
    facet_wrap(~fct_relevel(month,'Sty','Lut','Mar','Kwi','Maj','Cze','Lip','Sie','Wrz','Paz','Lis','Gru'))
  ggsave("plotsImages/QQPlot-3.png", width = 9, height = 6, units = "in")
  ######################################  ######################################
  ######################################  ######################################
  
  
  ##obszar
  qplot_ob <- ggplot(foresty, aes(sample = log(area))) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Spalony obszar w skali logarytmicznej",
         x = "Teoretyczny",
         y = "Obszar(ha)")
  ggsave("plotsImages/QQPlot-4.png", width = 9, height = 6, units = "in")
  
  
  #kolorowy
  qplot_ob1 <- ggplot(foresty, aes(sample = log(area), color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Spalony obszar w skali logarytmicznej w danym miesiacu",
         x = "Teoretyczny",
         y = "Obszar(ha)",
         colour = "Miesiace")
  ggsave("plotsImages/QQPlot-5.png", width = 9, height = 6, units = "in")
  
  
  qplot_ob2 <- ggplot(foresty, aes(sample = log(area), group = month, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Spalony obszar w skali logarytmicznej w danym miesiacu",
         x = "Teoretyczny",
         y = "Obszar(ha)",
         colour = "Miesiace")+
    facet_wrap(~month, scale="free_y")+
    facet_wrap(~fct_relevel(month,'Sty','Lut','Mar','Kwi','Maj','Cze','Lip','Sie','Wrz','Paz','Lis','Gru'))
  ggsave("plotsImages/QQPlot-6.png", width = 9, height = 6, units = "in")
  ######################################  ######################################
  ######################################  ######################################
  
  
  ##DC
  qplot_dc <- ggplot(foresty, aes(sample = sqrt(DC))) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Pierwiastek wskaznika suszy",
         x = "Teoretyczny",
         y = "Wskaznik")
  ggsave("plotsImages/QQPlot-7.png", width = 9, height = 6, units = "in")
  
  
  #kolorowy
  qplot_dc1 <- ggplot(foresty, aes(sample = sqrt(DC), color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Pierwiastek wskaznika suszy",
         x = "Teoretyczny",
         y = "Wskaznik",
         colour = "Miesiace")
  ggsave("plotsImages/QQPlot-8.png", width = 9, height = 6, units = "in")
  
  
  qplot_dc2 <- ggplot(foresty, aes(sample = sqrt(DC), group = month, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Pierwiastek wskaznika suszy",
         x = "Teoretyczny",
         y = "Wskaznik",
         colour = "Miesiace")+
    facet_wrap(~month, scale="free_y")+
    facet_wrap(~fct_relevel(month,'Sty','Lut','Mar','Kwi','Maj','Cze','Lip','Sie','Wrz','Paz','Lis','Gru'))
  ggsave("plotsImages/QQPlot-9.png", width = 9, height = 6, units = "in")
  ######################################  ######################################
  ######################################  ######################################
  
  ##FFMC
  qplot_ffmc <- ggplot(foresty, aes(sample = FFMC)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+ 
    labs(title = "Wilgotnosc materialow palnych",
         x = "Teoretyczna",
         y = "Wilgotnosc")
  ggsave("plotsImages/QQPlot-10.png", width = 9, height = 6, units = "in")
  
  #kolorowy
  qplot_ffmc1 <- ggplot(foresty, aes(sample = FFMC, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bigstatsr()+
    labs(title = "Wilgotnosc materialow palnych w danym miesiacu",
         x = "Teoretyczna",
         y = "Wilgotnosc",
         colour = "Miesiace")
  ggsave("plotsImages/QQPlot-11.png", width = 9, height = 6, units = "in")
  
  
  qplot_ffmc2 <- ggplot(foresty, aes(sample = FFMC, group = month, color = month)) + 
    stat_qq() + stat_qq_line()+ 
    theme_bw()+ 
    labs(title = "Wilgotnosc materialow palnych w danym miesiacu",
         x = "Teoretyczny",
         y = "Wilgotnosc",
         colour = "Miesiace")+
    facet_wrap(~month, scale="free_y")+
    facet_wrap(~fct_relevel(month,'Sty','Lut','Mar','Kwi','Maj','Cze','Lip','Sie','Wrz','Paz','Lis','Gru'))
  ggsave("plotsImages/QQPlot-12.png", width = 9, height = 6, units = "in")
  ######################################  ######################################
  ######################################  ######################################
  
  #miesiace jako liczby
  foresty$month <- recode(foresty$month, "Sty"="Jan", "Lut"="Feb", "Mar"="Mar", "Kwi"="Apr","Maj"="May", "Cze"="Jun", "Lip"="Jul", "Sie"="Aug","Wrz"="Sep", "Paz"="Oct", "Lis"="Nov", "Gru"="Dec")
  foresty$month <- match(foresty$month, month.abb)
}
