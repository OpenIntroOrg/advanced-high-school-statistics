library(openintro)
data(COL)

myPDF("oneSidedTailForMidtermUnemploymentHT.pdf", 6.325, 2.875,
      mar = c(1.8, 0.5, 0.2, 0.5))
normTail(0, 0.8717,
         L = -1.07,
         df = 25,
         col = COL[1])
dev.off()
