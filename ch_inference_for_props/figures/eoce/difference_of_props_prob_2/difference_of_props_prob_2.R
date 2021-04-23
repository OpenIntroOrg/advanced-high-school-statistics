library(openintro)

myPDF("diff_prop_area_above_0055.pdf", 5, 3,
  mar = c(5,0,0,0), mgp = c(3,1,0), mfrow = c(1,1))
normTail(0.05, 0.0081, U = 0.055, col = COL[1], axes = FALSE)
axis(1, at = 0.05 + (-3:3) * 0.0081)
dev.off()

myPDF("diff_prop_area_below_004.pdf", 5, 3,
  mar = c(5,0,0,0), mgp = c(3,1,0), mfrow = c(1,1))
normTail(0.05, 0.0081, L = 0.04, col = COL[1], axes = FALSE)
axis(1, at = 0.05 + (-3:3) * 0.0081)
dev.off()

