foresty <- read.csv(file = 'forestfires.csv')

jan =0; feb=0; mar=0; apr=0; may=0; jun=0; jul=0; aug=0; sep=0; oct=0; nov=0; dec=0;
for(i in foresty$month){
  if(i == "jan"){
    jan = jan + 1
  }else if(i=="feb"){
    feb = feb + 1
  }else if(i=="mar"){
    mar = mar + 1
  }else if(i == "apr"){
    apr = apr + 1
  }else if(i=="may"){
    may = may + 1
  }else if(i=="jun"){
    jun = jun+1
  }else if(i=="jul"){
    jul = jul+1
  }else if(i=="aug"){
    aug = aug +1
  }else if(i=="sep"){
    sep = sep+1
  }else if(i=="oct"){
    oct = oct + 1
  }else if(i=="nov"){
    nov = nov +1
  }else if(i=="dec"){
    dec = dec + 1
  }
}
dataMonths = c(jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec)
my_cols <- c("#00AFBB", "#E7B800", "#FC4E07")
my_cols2 <- c("red", "green3", "blue")

pairs(~rain+temp+wind+area, data=foresty,
      labels=c("Deszcz", "Temperatura","Wiatr","Powierzchnia"),
      main="Wykres scatterplot matrix zestawienie: Pogody i obszaru", panel=panel.smooth, col=my_cols2)

pairs(~rain+temp+wind, data=foresty,
      labels=c("Deszcz", "Temperatura","Wiatr"),
      main="Wykres scatterplot matrix zestawienie: Pogodowe", panel=panel.smooth, col=my_cols)
