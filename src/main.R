#includes
source("UsefullFunctions/install-all-needed-packages.R")
source("UsefullFunctions/read-csv-and-recode.R")
#1d
source("1Dplots/density.R")
source("1Dplots/missingPlots.R")
source("1Dplots/boxAndWhisker.R")
source("1Dplots/barPlots.R")
#2d
source("2Dplots/density-2d.R")
source("2Dplots/scatterPlotMatrix-2d.R")
source("2Dplots/boxAndWhisker-2d.R")
source("2Dplots/correlation-2d.R")

installAllNeededPackages()

#Load Data
foresty <- ReadCSVAndRecodeMonthsAndDays()

#################Generate 1D plots#################

#Box and Whisker plots
boxAndWhisker(foresty)

#Density plots
makeDensity(foresty)

#missing plots and other box and whisker
makeMissingPlotsAndBoxAndWhiskerPlots(foresty)

#Bar plots
makeBarPlots(foresty)

################Generate 2D plots#################

#Box and Whisker plots 2D
boxAndWhisker2d(foresty)

#Density plots 2D
makeDensity2d(foresty)

#ScatterPlotMatrix 2D
makeScatterPlotMatrix2d(foresty)

#Correlation plots 2D
makeCorrelationPlots(foresty)



