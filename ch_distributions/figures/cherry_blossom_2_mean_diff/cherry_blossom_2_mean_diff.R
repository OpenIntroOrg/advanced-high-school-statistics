library(openintro)
data(COL)

myPDF("cherry_blossom_2_mean_diff.pdf", 5.2, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0, 1.79, -3, 3, col = COL[1])
lines(c(-3, -3), c(0, 0.1), lty = 2)
lines(c(3, 3), c(0, 0.1), lty = 2)
text(c(-3, 3), c(0.1, 0.1), c("x = -3", "x = 3"), pos = 3)
dev.off()
