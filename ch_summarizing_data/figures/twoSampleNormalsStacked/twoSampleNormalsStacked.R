library(openintro)
data(COL)

myPDF("twoSampleNormalsStacked.pdf", 4.65, 2.24,
      mar = c(2,1,0.5,1))

# curve 1
X <- seq(-4,4,0.01)
Y <- dnorm(X)
plot(X, Y,
     type = 'l',
     axes = FALSE,
     yaxs="i",
     xlim = c(-5, 35), ylim=c(0,.41))
axis(1, at = seq(-10, 40, 10))
lines(X, Y, col=COL[1],lwd=2)
abline(h = 0)

# curve 2
X <- seq(3,35, 0.01)
Y <- dnorm(X, 19, 4)
lines(X, Y,col=COL[2],lwd=2)

dev.off()
