library(openintro)

set.seed(1)
x <- rnorm(500)
x <- (x - mean(x)) / sd(x)
x <- 3 * x + 27
y <- (9 / 5) * x + 32
xlim <- range(x, y)
xlim <- round(xlim + c(-3, 3))

myPDF("CToF_ConversionFigure.pdf", 6, 2,
      mar=c(3, 3, 0.5, 1.2), mgp=c(2.8, 0.5, 0))
histPlot(x, breaks = xlim[1]:xlim[2], axes = FALSE,
         ylab = "", col = COL[1],yaxs="i")
histPlot(y, breaks = xlim[1]:xlim[2],
         add = TRUE, col = COL[2],yaxs="i")
axis(1, at = seq(0, 100, 20))
axis(1, at = seq(10, 100, 20), rep("", 5))
axis(2, seq(0, 80, 20))
text(30, 50, "Celsius", pos = 4, col = COL[1])
text(85, 30, "Fahrenheit", pos = 4, col = COL[2])
title(ylab="Frequency",line=2,cex.lab=.8)
mtext("Temperature", 1, 1.8)
dev.off()

