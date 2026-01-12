library(openintro)
data(COL)


myPDF("groceryStoreComparison.pdf", 4, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0.10, 0.093, 0, col = COL[1], axes = FALSE, yaxs="i", ylim = c(0, 6.4))
axis(1, at = round(0.1 + 0.093 * c(-5, -2, 0, 2, 5), 2))
axis(1, 0, labels=FALSE)
lines(c(0, 0), c(0, 4.7), lty = 2)
text(0, 4.7, expression(hat(p)[1]-hat(p)[2] == 0), pos = 3)
dev.off()

myPDF("groceryStoreComparisonZ.pdf", 4, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0, 1, -1.075, col = COL[1], axes = FALSE, yaxs="i", ylim = c(0, 0.6))
axis(1, at = round(0 + 1 * c(-5, -2, 0, 2, 5), 2))
axis(1, -1.075, labels=FALSE)
lines(c(-1.075, -1.075), c(-1.075, .45), lty = 2)
text(-1.075, .45, "Z = -1.075", pos = 3)
dev.off()
