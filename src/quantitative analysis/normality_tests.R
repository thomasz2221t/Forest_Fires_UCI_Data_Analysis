library(nortest)


normality_tests<-function(foresty){
  
  los = 30 #ile elementow ma byc wylosowanych
  #x
  probka_x <- sample(foresty$X, size = los, replace = FALSE, prob=NULL)
  #y
  probka_y <- sample(foresty$Y, size = los, replace = FALSE, prob=NULL)
  #FFMC
  probka_ffmc <- sample(foresty$FFMC, size = los, replace = FALSE, prob=NULL)
  #DMC
  probka_dmc <- sample(foresty$DMC, size = los, replace = FALSE, prob=NULL)
  #DC
  probka_dc <- sample(foresty$DC, size = los, replace = FALSE, prob=NULL)
  #ISI
  probka_isi <- sample(foresty$ISI, size = los, replace = FALSE, prob=NULL)
  #temp
  probka_temp <- sample(foresty$temp, size = los, replace = FALSE, prob=NULL)
  #RH
  probka_rh <- sample(foresty$RH, size = los, replace = FALSE, prob=NULL)
  #wind
  probka_wind <- sample(foresty$wind, size = los, replace = FALSE, prob=NULL)
  #rain
  probka_rain <- sample(foresty$rain, size = los, replace = FALSE, prob=NULL)
  #area
  probka_area <- sample(foresty$area, size = los, replace = FALSE, prob=NULL)

  sink(file = "normtest results/Test_Normalnosci_Shapiro_Wilka.txt", append = FALSE)
  shapiro.test(probka_x)
  shapiro.test(probka_y)
  shapiro.test(probka_ffmc)
  shapiro.test(probka_dmc)
  shapiro.test(probka_dc)
  shapiro.test(probka_isi)
  shapiro.test(probka_temp)
  shapiro.test(probka_rh)
  shapiro.test(probka_wind) #w rain jest duzo zer i probke wylosowalo z samymi zerami, sprawdzic czy jest w pliku, bo test shapiro-wilka odmawia wykonania jak probka ma indentyczne wartosci
  shapiro.test(probka_rain)
  shapiro.test(probka_area)
  sink()

  sink(file = "normtest results/Test_Normalnosci_Pearsona_Chi^2.txt", append = FALSE)
  pearson.test(probka_x,  adjust = TRUE)
  pearson.test(probka_y,  adjust = TRUE)
  pearson.test(probka_ffmc, adjust = TRUE)
  pearson.test(probka_dmc,  adjust = TRUE)
  pearson.test(probka_dc,  adjust = TRUE)
  pearson.test(probka_isi,  adjust = TRUE)
  pearson.test(probka_temp, adjust = TRUE)
  pearson.test(probka_rh,  adjust = TRUE)
  pearson.test(probka_wind,  adjust = TRUE)
  pearson.test(probka_rain,  adjust = TRUE)
  pearson.test(probka_area,  adjust = TRUE)
  sink()

  sink(file = "normtest results/Test_Normalnosci_Shapiro-Francia.txt", append = FALSE)
  sf.test(probka_x)
  sf.test(probka_y)
  sf.test(probka_ffmc)
  sf.test(probka_dmc)
  sf.test(probka_dc)
  sf.test(probka_isi)
  sf.test(probka_temp)
  sf.test(probka_rh)
  sf.test(probka_wind)
  sf.test(probka_rain)
  sf.test(probka_area)
  sink()
}
