
library(openintro)
data(COL)
data(possum)

myPDF('scattHeadLTotalL.pdf', 6.9, 4.6,
      mar = c(3.7, 3.7, 0.5, 0.5),
      mgp = c(2.6, 0.55, 0))
plot(possum$total_l, possum$head_l,
     pch = 19,
     col = COL[1, 2],
     cex = 1.2,
     xlab = 'Total length (cm)',
     ylab = 'Head length (mm)',
     axes=FALSE,
     frame.plot = FALSE)
axis(1,seq(70,100,5))
axis(2,seq(80,110,5))
rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col = COL[5,9], border=NA)

points(89, 94.1, col = COL[4], cex = 1.7)
lines(rep(89, 2), c(0, 93.8), lty = 2, col = COL[4])
lines(c(0, 88.7), rep(94.1, 2), lty = 2, col = COL[4])
dev.off()