library(openintro)
data(COL)


myPDF('cherry1.pdf', 3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(94.52, 8.97, 90,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.05),xaxt = "n")
axis(1, at = c(76.58, 94.52, 112.46))
axis(1, at = 90, labels=FALSE)
lines(c(90, 90), c(0,.044), lty = 2)
abline(h=0, lwd=2)
text(90, .0415, "x = 90", pos = 3, cex=.7)
dev.off()


myPDF('cherry20.pdf', 3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(94.52, 2.01, 90,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.21),xaxt = "n")
axis(1, at = c(90.5, 94.52, 98.54))
axis(1, at = 90, labels=FALSE)
lines(c(90, 90), c(0,.11), lty = 2)
abline(h=0, lwd=2)
text(90, .1, expression(bar(x) == 90), pos = 3, cex=.7)
dev.off()

myPDF('cherry1Z.pdf',  3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(0, 1, -0.504,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.45),xaxt = "n")
axis(1, at = round(c(-2, 0, 2)))
axis(1, at = -0.504, labels=FALSE)
lines(c(-0.504, -0.504), c(0,.395), lty = 2)
abline(h=0, lwd=2)
text(-0.504, .3725, "Z = -0.504", pos = 3, cex=.7)
dev.off()

myPDF('cherry20Z.pdf',  3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(0, 1, -2.25,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.4225),xaxt = "n")
axis(1, at = round(c(-2, 0, 2)))
axis(1, at = -2.25, labels=FALSE)
lines(c(-2.25, -2.25), c(0,.215), lty = 2)
abline(h=0, lwd=2)
text(-2.25, .205, "Z = -2.25", pos = 3, cex=.7)
dev.off()


