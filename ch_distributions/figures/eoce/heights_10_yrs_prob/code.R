library(openintro)


myPDF("heights_10_yrs_prob_normal_dist.pdf", 4, 2,
    mar = c(2, 0, 0, 0))
normTail(55, 6, L = 54, col = COL[1])
dev.off()
