library(openintro)

myPDF("diff_means_area_above_7.pdf", 5, 3,
  mar = c(5,0,0,0), mgp = c(3,1,0), mfrow = c(1,1))
normTail(5, 3.37, U = 7, col = COL[1], axes = FALSE)
axis(1, at = 5 + (-3:3) * 3.37)
dev.off()

myPDF("diff_means_area_below_3.pdf", 5, 3,
  mar = c(5,0,0,0), mgp = c(3,1,0), mfrow = c(1,1))
normTail(5, 3.37, L = 3, col = COL[1], axes = FALSE)
axis(1, at = 5 + (-3:3) * 3.37)
dev.off()

myPDF("diff_means_area_below_0.pdf", 5, 3,
  mar = c(5,0,0,0), mgp = c(3,1,0), mfrow = c(1,1))
normTail(5, 3.37, L = 0, col = COL[1], axes = FALSE)
axis(1, at = 5 + (-3:3) * 3.37)
dev.off()

