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
normTail(0.05, 0.0935, 0, col = COL[1], axes = FALSE, ylim = c(0, 7))
axis(1, at = round(0.05 + 0.0935 * c(-5, -2, 0, 2, 5), 2))
lines(c(0, 0), c(0, 5.3), lty = 2)
text(0, 5, "x = 0", pos = 3)
dev.off()
