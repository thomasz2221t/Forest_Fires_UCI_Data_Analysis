library(plotrix)

calculateAvgTempetrature <-function(dane)
{
  jan =0; feb=0; mar=0; apr=0; may=0; jun=0; jul=0; aug=0; sep=0; oct=0; nov=0; dec=0;
  tjan =0; tfeb=0; tmar=0; tapr=0; tmay=0; tjun=0; tjul=0; taug=0; tsep=0; toct=0; tnov=0; tdec=0;
  licznik =1
  
  for(i in dane$month ){
    if(i == 1){
      jan = jan + 1
      tjan = tjan + dane$temp[licznik]
      
    }else if(i==2){
      feb = feb + 1
      tfeb= tfeb + dane$temp[licznik]
    }else if(i==3){
      mar = mar + 1
      tmar= tmar + dane$temp[licznik]
    }else if(i == 4){
      apr = apr + 1
      tapr= tapr + dane$temp[licznik]
    }else if(i==5){
      may = may + 1
      tmay= tmay + dane$temp[licznik]
    }else if(i==6){
      jun = jun+1
      tjun= tjun + dane$temp[licznik]
    }else if(i==7){
      jul = jul+1
      tjul = tjul + dane$temp[licznik]
    }else if(i==8){
      aug = aug +1
      taug= taug + dane$temp[licznik]
    }else if(i==9){
      sep = sep+1
      tsep= tsep + dane$temp[licznik]
    }else if(i==10){
      oct = oct + 1
      toct= toct + dane$temp[licznik]
    }else if(i==11){
      nov = nov +1
      tnov= tnov + dane$temp[licznik]
    }else if(i==12){
      dec = dec + 1
      tdec= tdec + dane$temp[licznik]
    }
    licznik =licznik +1
  }
  
  #srednie temperatury
  stjan = tjan / jan
  stfeb = tfeb / feb
  stmar = tmar / mar
  stapr = tapr / apr
  stmay = tmay / may
  stjun = tjun / jun
  stjul = tjul / jul
  staug = taug / aug
  stsep = tsep / sep
  stoct = toct / oct
  stnov = tnov / nov
  stdec = tdec / dec
  return (c(stjan,stfeb,stmar,stapr,stmay,stjun,stjul,staug,stsep,stoct,stnov,stdec))
}



calculateAvgWind <-function(dane)
{
  jan =0; feb=0; mar=0; apr=0; may=0; jun=0; jul=0; aug=0; sep=0; oct=0; nov=0; dec=0;
  tjan =0; tfeb=0; tmar=0; tapr=0; tmay=0; tjun=0; tjul=0; taug=0; tsep=0; toct=0; tnov=0; tdec=0;
  licznik =1
  
  for(i in dane$month ){
    if(i == 1){
      jan = jan + 1
      tjan = tjan + dane$wind[licznik]
      
    }else if(i==2){
      feb = feb + 1
      tfeb= tfeb + dane$wind[licznik]
    }else if(i==3){
      mar = mar + 1
      tmar= tmar + dane$wind[licznik]
    }else if(i == 4){
      apr = apr + 1
      tapr= tapr + dane$wind[licznik]
    }else if(i==5){
      may = may + 1
      tmay= tmay + dane$wind[licznik]
    }else if(i==6){
      jun = jun+1
      tjun= tjun + dane$wind[licznik]
    }else if(i==7){
      jul = jul+1
      tjul = tjul + dane$wind[licznik]
    }else if(i==8){
      aug = aug +1
      taug= taug + dane$wind[licznik]
    }else if(i==9){
      sep = sep+1
      tsep= tsep + dane$wind[licznik]
    }else if(i==10){
      oct = oct + 1
      toct= toct + dane$wind[licznik]
    }else if(i==11){
      nov = nov +1
      tnov= tnov + dane$wind[licznik]
    }else if(i==12){
      dec = dec + 1
      tdec= tdec + dane$wind[licznik]
    }
    licznik =licznik +1
  }
  #srednie wiatru
  stjan = tjan / jan
  stfeb = tfeb / feb
  stmar = tmar / mar
  stapr = tapr / apr
  stmay = tmay / may
  stjun = tjun / jun
  stjul = tjul / jul
  staug = taug / aug
  stsep = tsep / sep
  stoct = toct / oct
  stnov = tnov / nov
  stdec = tdec / dec
  
 return(c(stjan,stfeb,stmar,stapr,stmay,stjun,stjul,staug,stsep,stoct,stnov,stdec))
}



calculateAvgArea <-function(dane)
{
  jan =0; feb=0; mar=0; apr=0; may=0; jun=0; jul=0; aug=0; sep=0; oct=0; nov=0; dec=0;
  tjan =0; tfeb=0; tmar=0; tapr=0; tmay=0; tjun=0; tjul=0; taug=0; tsep=0; toct=0; tnov=0; tdec=0;
  licznik =1
  
  for(i in dane$month ){
    if(i == 1){
      jan = jan + 1
      tjan = tjan + dane$area[licznik]
      
    }else if(i==2){
      feb = feb + 1
      tfeb= tfeb + dane$area[licznik]
    }else if(i==3){
      mar = mar + 1
      tmar= tmar + dane$area[licznik]
    }else if(i == 4){
      apr = apr + 1
      tapr= tapr + dane$area[licznik]
    }else if(i==5){
      may = may + 1
      tmay= tmay + dane$area[licznik]
    }else if(i==6){
      jun = jun+1
      tjun= tjun + dane$area[licznik]
    }else if(i==7){
      jul = jul+1
      tjul = tjul + dane$area[licznik]
    }else if(i==8){
      aug = aug +1
      taug= taug + dane$area[licznik]
    }else if(i==9){
      sep = sep+1
      tsep= tsep + dane$area[licznik]
    }else if(i==10){
      oct = oct + 1
      toct= toct + dane$area[licznik]
    }else if(i==11){
      nov = nov +1
      tnov= tnov + dane$area[licznik]
    }else if(i==12){
      dec = dec + 1
      tdec= tdec + dane$area[licznik]
    }
    licznik =licznik +1
  }
  #srednie obszaru
  stjan = tjan / jan
  stfeb = tfeb / feb
  stmar = tmar / mar
  stapr = tapr / apr
  stmay = tmay / may
  stjun = tjun / jun
  stjul = tjul / jul
  staug = taug / aug
  stsep = tsep / sep
  stoct = toct / oct
  stnov = tnov / nov
  stdec = tdec / dec
  
  return(c(stjan,stfeb,stmar,stapr,stmay,stjun,stjul,staug,stsep,stoct,stnov,stdec))
}




calculateAvgRain <-function(dane)
{
  jan =0; feb=0; mar=0; apr=0; may=0; jun=0; jul=0; aug=0; sep=0; oct=0; nov=0; dec=0;
  tjan =0; tfeb=0; tmar=0; tapr=0; tmay=0; tjun=0; tjul=0; taug=0; tsep=0; toct=0; tnov=0; tdec=0;
  licznik =1
  
  for(i in dane$month ){
    if(i == 1){
      jan = jan + 1
      tjan = tjan + dane$rain[licznik]
      
    }else if(i==2){
      feb = feb + 1
      tfeb= tfeb + dane$rain[licznik]
    }else if(i==3){
      mar = mar + 1
      tmar= tmar + dane$rain[licznik]
    }else if(i == 4){
      apr = apr + 1
      tapr= tapr + dane$rain[licznik]
    }else if(i==5){
      may = may + 1
      tmay= tmay + dane$rain[licznik]
    }else if(i==6){
      jun = jun+1
      tjun= tjun + dane$rain[licznik]
    }else if(i==7){
      jul = jul+1
      tjul = tjul + dane$rain[licznik]
    }else if(i==8){
      aug = aug +1
      taug= taug + dane$rain[licznik]
    }else if(i==9){
      sep = sep+1
      tsep= tsep + dane$rain[licznik]
    }else if(i==10){
      oct = oct + 1
      toct= toct + dane$rain[licznik]
    }else if(i==11){
      nov = nov +1
      tnov= tnov + dane$rain[licznik]
    }else if(i==12){
      dec = dec + 1
      tdec= tdec + dane$rain[licznik]
    }
    licznik =licznik +1
  }
  #srednie deszczu
  stjan = tjan / jan
  stfeb = tfeb / feb
  stmar = tmar / mar
  stapr = tapr / apr
  stmay = tmay / may
  stjun = tjun / jun
  stjul = tjul / jul
  staug = taug / aug
  stsep = tsep / sep
  stoct = toct / oct
  stnov = tnov / nov
  stdec = tdec / dec
  
  stem <- c(stjan,stfeb,stmar,stapr,stmay,stjun,stjul,staug,stsep,stoct,stnov,stdec)
}



makeBarPlots <- function(foresty)
{
  miesiace <- c("jan","feb","mar","apr","may","jun","jul", "aug","sep", "oct", "nov", "dec" )
  sredniaTemperatura <- calculateAvgTempetrature(foresty)
  sredniWiatr <- calculateAvgWind(foresty) 
  sredniObszar <- calculateAvgArea(foresty)
  sredniDeszcz <- calculateAvgRain(foresty)
  
  png(filename= "plotsImages/barPlot1D-1.png")
  barplot( height =sredniaTemperatura, names = miesiace, ylim = c(0,30), main="Srednia temperatura w miesiacach",
           xlab="miesiace",ylab = "temperatura [Celsius degrees]", col=c("darkblue","red"))
  dev.off()
  
  png(filename= "plotsImages/barPlot1D-2.png")
  barplot( height = sredniWiatr,names = miesiace, ylim = c(0,11), main="Srednia wartosc wiatru w miesiacach",
           xlab="miesiace",ylab = "wartosc wiatru [km/h]", col=c("darkblue","red"))
  dev.off()
  
  png(filename= "plotsImages/barPlot1D-3.png")
  barplot( height = sredniObszar,names = miesiace, ylim = c(0,26), main="Sredni obszar pozaru w miesiacach",
           xlab="miesiace",ylab = "obszar [ha]", col=c("darkblue","red"))
  dev.off()
  
  png(filename= "plotsImages/barPlot1D-4.png")
  barplot( height =sredniDeszcz,names = miesiace, ylim = c(0,0.1), main="Srednie opady w miesiacach",
           xlab="miesiace",ylab = "opady [mm/m2] ", col=c("darkblue","red"))
  dev.off()
  
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
