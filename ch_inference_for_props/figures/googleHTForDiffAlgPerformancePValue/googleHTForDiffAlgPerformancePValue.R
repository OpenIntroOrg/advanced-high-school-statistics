library(openintro)
data(COL)

myPDF('googleHTForDiffAlgPerformancePValue.pdf',5.6, 2.8,
      mar = c(2, 0.5, 0.25, 0.5),
      mgp = c(2.1, 0.7, 0))
ChiSquareTail(6.12,
              2,
              c(0, 26),
              axes=FALSE,
              col = COL[1])
axis(1,pos=0)
lines(c(6.12, 6.12), c(0, .2), lty = 2)
text(6.12, .2, expression(chi^2 == 6.120), pos = 3)
dev.off()
