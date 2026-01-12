library(openintro)
data(COL)


myPDF('satBelow1030.pdf', 3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(1100, 200, 1030,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.0025),xaxt = "n")
axis(1, at = c(700, 1100, 1500))
axis(1, at = 1030, labels=FALSE)
abline(h=0, lwd=2)
lines(c(1030, 1030), c(0,.0021), lty = 2)
text(1030, .00195, "x = 1030", pos = 3, cex=.7)
dev.off()

myPDF('satBelow1030Z.pdf',  3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(0, 1, -0.35,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.5),xaxt = "n")
axis(1, at = round(c(-2, 0, 2)))
axis(1, at = -0.35, labels=FALSE)
lines(c(-.35, -.35), c(0,.43), lty = 2)
abline(h=0, lwd=2)
text(-.35, .4, "Z = -0.35", pos = 3, cex=.7)
dev.off()

myPDF('satAbove1030.pdf', 3, 1,
      mar = c(1.5, 4, 0, 0),
      mgp = c(3, 0.45, 0))
normTail(1100, 200,
         U = 1030,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.002))
axis(1, at = c(700, 1100, 1500))
abline(h=0, lwd=2)
dev.off()
