library(openintro)
data(COL)

myPDF("smallTownSmokers.pdf", 4, 1.5,
      mar = c(1.6, 0, 0, 0))
normTail(80, 8, 60, col = COL[1], df = 20)
dev.off()


