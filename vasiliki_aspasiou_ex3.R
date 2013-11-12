rm(list = ls())
library(rasta)

filepath <- system.file("extdata", "anom.2000.03.tiff", package ="rasta")
g <- raster(filepath)

dran1 <- runifpoint(30, win = as.vector(t(bbox(g))))
dp <- as.data.frame(dran1)

plot(g)
 
plot(dran1, add = TRUE, col = "red")

m<-extract(g,dp)
m <-median(m)

text <- paste("The median is",m)
mtext(side = 3, line = 2, text, cex = 1)
