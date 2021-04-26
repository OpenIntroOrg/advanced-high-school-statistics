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