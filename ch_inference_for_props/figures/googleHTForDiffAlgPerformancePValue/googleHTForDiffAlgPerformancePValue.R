library(openintro)
data(COL)

myPDF('googleHTForDiffAlgPerformancePValue.pdf', 5, 2.25,
    mar = c(2, 1, 1, 1), mgp = c(2.1, 0.7, 0))
ChiSquareTail(6.12,
              2,
              c(0, 16),
              axes=FALSE,
              col = COL[1])
axis(1,pos=0)
dev.off()
