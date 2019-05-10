library(openintro)
data(COL)

myPDF("sat80thPercentile.pdf", 4, 1.5,
      mar = c(1.6, 0, .2, 0))
# Intentially not exact
normTail(1100, 200, 1268, col = COL[1],yaxs="i",ylim = c(0, 0.0021))
dev.off()
