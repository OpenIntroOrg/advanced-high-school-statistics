library(openintro)
data(COL)

myPDF("sat80thPercentile.pdf", 4, 1.5,
      mar = c(1.6, 0, 0, 0))
# Intentially not exact
normTail(1500, 300, 1730, col = COL[1])
dev.off()
