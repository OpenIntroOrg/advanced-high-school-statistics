library(openintro)
data(COL)

myPDF('tDistDF99.pdf', 4, 1.3,
      mar = c(1.6, 1, 0.1, 1),
      mgp = c(5, 0.45, 0))
normTail(L = -2.35,
         U=2.35,
         df = 99,
         xlim = c(-4, 4),
         col = COL[1],
         axes = FALSE,
         yaxs='i', ylim=c(0,0.4))
lines(c(-2.35, -2.35), c(0,.11), lty = 2)
text(-2.35, .095, "-2.35", pos = 3, cex=.7)
lines(c(2.35, 2.35), c(0,.11), lty = 2)
text(2.35, .095, "2.35", pos = 3, cex=.7)
axis(1)
dev.off()


myPDF('tDistDF99X.pdf', 4, 1.8,
      mar = c(1.6, 1, 0.1, 1),
      mgp = c(4, 0.45, 0))
normTail(L = -2.35,
         U=2.35,
         df = 99,
         xlim = c(-4, 4),
         col = COL[1],
         axes = FALSE,
         yaxs='i', ylim=c(0,0.4))
lines(c(-2.35, -2.35), c(0,.11), lty = 2)
text(-2.35, .095, expression(bar(x) == -89.3), pos = 3, cex=.7)
lines(c(2.35, 2.35), c(0,.11), lty = 2)
text(2.35, .095, expression(bar(x) == 97.3), pos = 3, cex=.7)
axis(1)
dev.off()
