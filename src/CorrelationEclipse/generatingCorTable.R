library(tidyverse)
library(gridExtra)

generatingCorTable <- function(forestyRecoded){ #wymagana wersja recoded
  
  data <- cor(forestyRecoded)
  ####################
  
  tabela <- data.frame(round(data, 3))
  png("plotsImages/corTable.png", height = 50nrow(tabela), width = 200ncol(tabela))
  grid.table(tabela)
  dev.off()
  
}
