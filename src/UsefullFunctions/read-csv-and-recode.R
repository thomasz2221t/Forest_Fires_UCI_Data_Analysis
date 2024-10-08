library(tidyverse)

ReadCSVAndRecodeMonthsAndDays <- function()
{
  foresty <- read.csv(file = 'data/forestfires.csv')
  foresty$month <- recode(foresty$month, "jan"=1, "feb"=2, "mar"=3, "apr"=4,"may"=5, "jun"=6, "jul"=7, "aug"=8,"sep"=9, "oct"=10, "nov"=11, "dec"=12)
  foresty$day <- recode(foresty$day, "mon"=1, "tue"=2, "wed"=3, "thu"=4,"fri"=5, "sat"=6, "sun"=7)
  return(foresty)
}