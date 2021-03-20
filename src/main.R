#includes
source("UsefullFunctions/install-all-needed-packages.R")
source("UsefullFunctions/read-csv-and-recode.R")
#1d
source("1Dplots/denisty.R")
source("1Dplots/missingPlots.R")
#2d
source("2Dplots/denisty-2d.R")
source("2Dplots/scatterPlotMatrix-2d.R")

installAllNeededPackages()

#Load Data
foresty <- ReadCSVAndRecodeMonthsAndDays()

