library(openintro)
data(COL)


myPDF("sat90thPercentileSD.pdf",  3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
# Intentially not exact
normTail(125, 10.1, 138,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.0495),xaxt = "n")
axis(1, at = 125)
axis(1, at = c(114.9, 135.1), labels=FALSE)
lines(c(138, 138), c(0,.034), lty = 2)
abline(h=0, lwd=2)
text(125, .02, "90%", pos = 1, cex=1.2)
text(138, .031, "x = 138", pos = 3, cex=.7)
dev.off()

myPDF("sat90thPercentileSDZ.pdf",  3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
# Intentially not exact
normTail(0, 1, 1.282,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.5),xaxt = "n")
axis(1, at = c(-1, 0,1))
axis(1, at = 1.282, labels=FALSE)
lines(c(1.282, 1.282), c(0,.31), lty = 2)
abline(h=0, lwd=2)
text(0, .2, "90%", pos = 1, cex=1.2)
text(1.282, .31, "z = 1.282", pos = 3, cex=.7)
dev.off()