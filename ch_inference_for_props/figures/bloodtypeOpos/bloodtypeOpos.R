library(openintro)
data(COL)

myPDF("bloodtypeOpos40.pdf", 3, 1,
      mar = c(1.6, 0, 0, 0))
normTail(14, 3, 12, col = COL[1], yaxs="i", ylim = c(0, 0.14))
dev.off()


myPDF("bloodtypeOpos400.pdf", 4, 1.3,
      mar = c(1.6, 0, 0, 0))
normTail(140, 9.5, 120, col = COL[1], yaxs="i", ylim = c(0, 0.045))
dev.off()

myPDF("bloodtypeOposMeanComparison.pdf", 4, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0.05, 0.0935, 0, col = COL[1], axes = FALSE, yaxs="i", ylim = c(0, 6.4))
axis(1, at = round(0.05 + 0.0935 * c(-5, -2, 0, 2, 5), 2))
axis(1, 0, labels=FALSE)
lines(c(0, 0), c(0, 4.7), lty = 2)
text(0, 4.7, expression(hat(p)[1]-hat(p)[2] == 0), pos = 3)
dev.off()

myPDF("bloodtypeOposMeanComparisonZ.pdf", 4, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0, 1, -.535, col = COL[1], axes = FALSE, yaxs="i", ylim = c(0, 0.6))
axis(1, at = round(0 + 1 * c(-5, -2, 0, 2, 5), 2))
axis(1, -.535, labels=FALSE)
lines(c(-.535, -.535), c(-.535, .45), lty = 2)
text(-.535, .45, "Z = -0.535", pos = 3)
dev.off()
