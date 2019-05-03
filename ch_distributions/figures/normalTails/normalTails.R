library(openintro)
data(COL)

myPDF("normalTails.pdf", 4.3, 1,
      mar = c(0.81, 1, 0.3, 1),
      mgp = c(3, -0.2, 0),
      mfrow = c(1,2))
normTail(0, 1,
         -0.8,
         col = COL[1],yaxs="i",
         axes = FALSE)
at <- c(-5, -.8, 5)
labels <- c(-5, 'negative Z', 5)
cex.axis <- 0.7
tick <- TRUE
axis(1, at, labels, cex.axis = cex.axis, tick = tick)


normTail(0, 1,
         0.8,
         col = COL[1],
         axes = FALSE,yaxs="i")
at2 <- c(-5, 0.8, 5)
labels <- c(-5, 'positive Z', 5)
axis(1, at2, labels, cex.axis = cex.axis, tick = tick)

dev.off()
