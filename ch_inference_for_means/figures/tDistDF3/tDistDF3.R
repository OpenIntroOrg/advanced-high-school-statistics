library(openintro)
data(COL)

myPDF('tDistDF3.pdf', 6.8, 1.9,
      mar = c(1.6, 1, 0.05, 1),
      mgp = c(5, 0.45, 0),
      mfrow = c(1, 2))
normTail(U=2.353,
         df = 3,
         xlim = c(-4, 4),
         col = COL[1],
         yaxs="i",
         axes = FALSE, ylim=c(0,0.41))
axis(1)
lines(c(2.353, 2.353), c(0,.2), lty = 2)
abline(h=0, lwd=2)
text(2.353, .2, "T = 2.353", pos = 3, cex=.8)

normTail(M = c(-3.182,3.182),
         df = 3,
         xlim = c(-4, 4),
         col = COL[1],
         yaxs="i",
         axes = FALSE, ylim=c(0,0.41))
axis(1)
text(0, .1, "90%", pos = 3, cex=.8)

dev.off()
