library(openintro)
data(COL)

set.seed(4)
myPDF('perfLinearModel.pdf', 4.5, 3.1,
      mar = c(3, 4, 1, 1),
      mgp = c(1.9, 0.55, 0))
x <- sample(33, 12, prob = c(33:24, 11:33))
y <- 5 + 57.49 * x
plot(x, y,
     ylim = c(0, max(y)+90),
     yaxs="i",
     xlim = c(0, max(x)+2),
     xaxs="i",
     axes = TRUE,
     frame.plot=FALSE,
     xlab = 'Number of Target Corporation stocks to purchase',
     ylab = '',
     pch = 20,
     cex = 1.7,
     col = COL[1])
buildAxis(1, x, 4, nMax = 4)
buildAxis(2, y, 3, nMax = 4)
abline(5, 57.49, col = COL[5])
mycol <- rgb(0, 0, 0, max = 255, alpha = 10, names = "transparent")

rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col = mycol, border=NA)

par(las = 0)
mtext('Total cost of the shares (dollars)', 2, 2.8)

dev.off()
