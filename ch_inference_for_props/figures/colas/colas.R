library(openintro)
data(COL)


myPDF("colas.pdf", 4, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0, 1,U = 1.83, col = COL[1], axes = FALSE, yaxs="i", ylim = c(0, 0.5))
axis(1, at = round(0 + 1 * c(-5, -2, 0, 2, 5), 2))
#axis(1, 1.83, labels=FALSE)
lines(c(1.83, 1.83), c(0, .2), lty = 2)
text(1.83, .2, "Z = 1.83", pos = 3)
dev.off()


