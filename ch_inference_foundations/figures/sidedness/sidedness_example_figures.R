library(openintro)
data(COL)

myPDF("sidedness_example_figures.pdf", 5, 0.85,
      mar = c(1.7, 1, 0.5, 1),
      mgp = c(0.5, 0.6, 0),
      mfrow = c(1, 3))
normTail(L = -1.2,
         col = COL[1],
         xlab = expression(H[A]* ": " * p < "null value"),
         axes = FALSE)
normTail(U = 1.2,
         col = COL[1],
         xlab = expression(H[A]* ": " * p > "null value"),
         axes = FALSE)
normTail(L = -1.2,
         U = 1.2,
         col = COL[1],
         xlab = expression(H[A]* ": " * p != "null value"),
         axes = FALSE)
dev.off()
