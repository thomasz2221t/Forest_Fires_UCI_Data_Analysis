# Libraries
library(ellipse)
library(RColorBrewer)

correlationMatrixPlot <- function(foresty)
{
# Use of the mtcars data proposed by R
  
data <- cor(foresty)

# Build a Pannel of 100 colors with Rcolor Brewer
my_colors <- brewer.pal(5, "Spectral")
my_colors <- colorRampPalette(my_colors)(100)
 
# Order the correlation matrix
ord <- order(data[1, ])
data_ord <- data[ord, ord]
png(filename= "plotsImages/CollerationMatrix-2D.png")
plotcorr(data_ord , col=my_colors[data_ord*50+50] , mar=c(1,1,1,1)  )
dev.off()
}