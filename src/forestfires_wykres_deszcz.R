library(plotrix)

# data <- read.csv("forestfires.csv")
# data <- setNames(data, c("x","y","month","day","FFMC","DMC","DC","ISI","temp","RH","wind","rain","area"))
# c1<- c(data$month , data$temp)
# data_bar <- c1
# barplot( c1, height = 100,width = 1,space = NULL, xlab = c1$month,  ylab = x1$temp)

dane <- read.csv("forestfires.csv")
#View(dane)
counts <- table(dane$month, dane$rain )

m1 <- c("jan","feb","mar","apr","may","jun","jul", "aug","sep", "oct", "nov", "dec" )

jan =0; feb=0; mar=0; apr=0; may=0; jun=0; jul=0; aug=0; sep=0; oct=0; nov=0; dec=0;
tjan =0; tfeb=0; tmar=0; tapr=0; tmay=0; tjun=0; tjul=0; taug=0; tsep=0; toct=0; tnov=0; tdec=0;
licznik =1

for(i in dane$month ){
  if(i == "jan"){
    jan = jan + 1
    tjan = tjan + dane$rain[licznik]

  }else if(i=="feb"){
    feb = feb + 1
    tfeb= tfeb + dane$rain[licznik]
  }else if(i=="mar"){
    mar = mar + 1
    tmar= tmar + dane$rain[licznik]
  }else if(i == "apr"){
    apr = apr + 1
    tapr= tapr + dane$rain[licznik]
  }else if(i=="may"){
    may = may + 1
    tmay= tmay + dane$rain[licznik]
  }else if(i=="jun"){
    jun = jun+1
    tjun= tjun + dane$rain[licznik]
  }else if(i=="jul"){
    jul = jul+1
    tjul = tjul + dane$rain[licznik]
  }else if(i=="aug"){
    aug = aug +1
    taug= taug + dane$rain[licznik]
  }else if(i=="sep"){
    sep = sep+1
    tsep= tsep + dane$rain[licznik]
  }else if(i=="oct"){
    oct = oct + 1
    toct= toct + dane$rain[licznik]
  }else if(i=="nov"){
    nov = nov +1
    tnov= tnov + dane$rain[licznik]
  }else if(i=="dec"){
    dec = dec + 1
    tdec= tdec + dane$rain[licznik]
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

stem <- c(stjan,stfeb,stmar,stapr,stmay,stjun,stjul,staug,stsep,stoct,stnov,stdec)

miesiace <- m1 #c("jan","feb","mar","apr","may","jun","jul", "aug","sep", "oct", "nov", "dec" )
deszcz <- stem #c(stjan,stfeb,stmar,stapr,stmay,stjun,stjul,staug,stsep,stoct,stnov,stdec)

macierz<-table( deszcz,miesiace)

#ramka = data.frame(miesiace, temperatury)

barplot(stem)
barplot( height =deszcz,names = miesiace, ylim = c(0,0.1), main="Srednie opady w miesiacach",
       xlab="miesiace",ylab = "opady [mm/m2] ", col=c("darkblue","red"))


