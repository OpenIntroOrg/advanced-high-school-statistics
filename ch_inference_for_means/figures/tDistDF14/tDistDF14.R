library(openintro)
data(COL)

myPDF('tDistDF14Both.pdf', 4, 1,
      mar = c(1.6, 1, 0.1, 1),
      mgp = c(5, 0.45, 0))
normTail(L = -2.07,U = 2.07,
         df = 14,
         xlim = c(-4, 4),
         col = COL[1],
         axes = FALSE,
         yaxs='i', ylim=c(0,0.4))
lines(c(2.07, 2.07), c(0,.2), lty = 2)
text(2.07, .2, "2.07", pos = 3, cex=.8)
lines(c(-2.07, -2.07), c(0,.2), lty = 2)
text(-2.07, .2, "-2.07", pos = 3, cex=.8)
axis(1)
dev.off()
