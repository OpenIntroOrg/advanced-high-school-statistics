library(openintro)


myPDF("heights_10_yrs_dist_norm.pdf", 4, 2,
    mar = c(2, 0, 0, 0))
normTail(55, 6, U = 76, col = COL[1], xlim = c(35, 80))
dev.off()
