library(openintro)
data(COL)

myPDF("satAbove1190.pdf", 3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(1100, 200,
         U = 1190,
         axes = FALSE,
         col = COL[1],yaxs="i", ylim = c(0, 0.0025))
axis(1, at = c(700, 1100, 1190, 1500),
     cex.axis = 0.8)
text(1190, .002, "x = 1190", pos = 3, cex=.7)
lines(c(1190, 1190), c(0, .0021), lty = 2)
abline(h=0, lwd=2)
dev.off()

myPDF("satAbove1190Z.pdf", 3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(0, 1,
         U = 0.45,
         axes = FALSE,
         col = COL[1],yaxs="i", ylim = c(0, 0.5))

axis(1, at = 0.45,labels=FALSE)
axis(1, at = round((c(-2, 0, 2))),
     cex.axis = 0.8)
text(0.45, .4, "Z = 0.4", pos = 3, cex=.7)
lines(c(0.45, .45), c(-1,.41), lty = 2)
abline(h=0, lwd=2)
dev.off()


myPDF("satBelow1190.pdf", 3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(1100, 200,
         L = 1190,
         axes = FALSE,
         col = COL[1],yaxs="i", ylim = c(0, 0.0021))
axis(1, at = c(700, 1100, 1500),
     cex.axis = 0.8)
abline(h=0, lwd=2)
dev.off()