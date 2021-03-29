installAllNeededPackages<- function(){
  packages <- c("ggplot2","Amelia","mlbench","tidyverse","corrplot","plotrix","nortest","bigstatsr","gridExtra","moments","ellipse")
  install.packages(setdiff(packages, rownames(installed.packages())))  
}
