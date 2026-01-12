library(openintro)
data(COL)
data(births)
d <- births

myPDF('distOfDiffOfSampleMeansForBWOfBabySmokeData.pdf', 4, 1.6,
      mar=c(1.6, 0, 0, 0),
      mgp=c(3, 0.5, 0))
normTail(0, 1,
         L = -1.54,
         U = 1.54,
         df = 20, # Aesthetics
         col = COL[1],
         yaxs="i",
         axes = FALSE, ylim=c(0,0.41))
at <- c(-5, -1.54,0, 1.54, 5)
labels <- expression(0, '-0.40',mu[n]-mu[s]*' = 0', '0.40', 0)
axis(1, at, labels, cex.axis=0.9)
# abline(h=0)
dev.off()

myPDF('distOfDiffOfSampleMeansForBWOfBabySmokeDataT.pdf', 4, 1.6,
      mar=c(1.6, 0, 0, 0),
      mgp=c(3, 0.5, 0))
normTail(0, 1,
         L = -1.54,
         U = 1.54,
         df = 20, # Aesthetics
         col = COL[1],
         yaxs="i",
         axes = FALSE, ylim=c(0,0.41))
at <- c(-5, -1.54,0, 1.54, 5)
labels <- expression(0, '-1.54', '0', '1.54', 0)
axis(1, at, labels, cex.axis=0.9)
# abline(h=0)
dev.off()
