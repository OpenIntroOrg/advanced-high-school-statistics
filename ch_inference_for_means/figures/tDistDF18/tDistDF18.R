library(openintro)
data(COL)

myPDF('tDistDF18Left.pdf', 4, 1.8,
      mar = c(1.6, 1, 0.1, 1),
      mgp = c(5, 0.45, 0))
normTail(L = -2.552,
         df = 18,
         xlim = c(-4, 4),
         col = COL[1],
         axes = FALSE,
         yaxs='i', ylim=c(0,0.4))
axis(1)
dev.off()

myPDF('tDistDF18Middle.pdf', 4, 1.8,
      mar = c(1.6, 1, 0.1, 1),
      mgp = c(5, 0.45, 0))
normTail(M = c(-1.734,1.734),
         df = 18,
         xlim = c(-4, 4),
         col = COL[1],
         axes = FALSE,
         yaxs='i', ylim=c(0,0.4))
axis(1)
text(-1.934, .2, "T = -1.734", pos = 3, cex=.8)
text(1.934, .2, "T = 1.734", pos = 3, cex=.8)
lines(c(-1.73, -1.73), c(0,.2), lty = 2)
lines(c(1.73, 1.73), c(0,.2), lty = 2)
abline(h=0, lwd=2)
dev.off()