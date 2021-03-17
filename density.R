foresty <- read.csv(file = 'forestfires.csv')

#Wykres gestosci dla dni tygodnia
Poniedzialek <- 0 
Wtorek <- 0 
Sroda <- 0 
Czwartek <- 0 
Piatek <- 0 
Sobota <- 0 
Niedziela <- 0 
for(i in foresty$day){
  if(i == "mon"){
    Poniedzialek = Poniedzialek + 1
    }
  else if(i == "tue"){
    Wtorek = Wtorek + 1
  }
  else if(i == "wed"){
    Sroda = Sroda  + 1
  }
  else if(i == "thu"){
    Czwartek = Czwartek + 1
  }
  else if(i == "fri"){
    Piatek = Piatek + 1
  }
  else if(i == "sat"){
    Sobota = Sobota + 1
  }
  else if(i == "sun"){
    Niedziela = Niedziela + 1
  }
}

days <-c(Poniedzialek,Wtorek,Sroda,Czwartek,Piatek,Sobota,Niedziela)
gestosc <- density(days)
plot(gestosc, frame = TRUE, col = "steelblue", main = "Gestosc pozarow dla dni tygodnia", sub="N = dni tygodnia")
polygon(gestosc, col = "steelblue", bor = "black")


#Wykres gestosci dla miesiecy
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


