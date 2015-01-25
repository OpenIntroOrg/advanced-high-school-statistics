library(openintro)
data(COL)

myPDF('PineBeetleConverge.pdf', 6.5, 3.5,
      mar=c(3.8, 4.2, 0.5, 0.5))

# _____ Simulate _____ #
set.seed(2) # 11
x <- sample(rep(0:1, c(215, 35)))
y <- cumsum(x) / 1:250

plot(1:250, y, log = "x", type="n",
     xlab = '', ylab = '', axes = FALSE)
rect(0.01, -1000, 1000, 1000, col = COL[7,3])
abline(h = seq(0, 1, 0.1), col = "white",
       lwd = 2.5)
abline(h = seq(0.05, 1, 0.1), col = "white",
       lwd = 0.7)
abline(h = 0, col = "white", lwd = 4)
lines(1:250, y, col = COL[1], lwd = 1.5)
mtext('Number of Trees in the Sample',
      side = 1, line = 2.5)
axis(1, c(1, 2, 5, 10, 25, 100, 250))
axis(2)
par(las = 0)
mtext('Running Sample Proportion',
      side = 2, line = 3)
box()
dev.off()



# _____ One-Sided p-value _____ #
myPDF('pValueOneSidedPropertyOwnerWithTheBeetleProblem.pdf',
    1.5 * 4.5, 1.2 * 2.2,
    mar = c(2, 0, 0.5, 0), mgp = c(3, 0.65, 0))
X <- seq(0, 0.3, 0.001)
Y <- dnorm(X, 0.12, 0.021)
plot(X, Y, type = 'l', axes = FALSE,
     xlim = c(0.05, 0.19), col = COL[5], lwd = 2)
axis(1, at = c(0.08, 0.12, 0.14, 0.16),
     label=expression(0.08, H[0]*': p = 0.12  ',
                      hat(p)*' = 0.14', 0.16),
     cex.axis = 1)
these <- which(X >= 0.14)
polygon(c(X[these[1]], X[these], X[rev(these)[1]]),
        c(0,Y[these],0), col=COL[1])
yMax <- max(Y)

text(0.12, yMax*.4, '0.83', cex=1.2)
arrows(0.155, 0.55 * yMax, 0.155, 0.3 * yMax,
       length = 0.1,
       col = COL[1], lwd = 1.5)
text(0.155, 0.55 * yMax, 'p-value\n 0.17',
     pos = 3, cex = 1.2, col = COL[1])
abline(h=0)
dev.off()



# _____ One-Sided p-value Explained _____ #
myPDF('pValueOneSidedBeetleStudyExplained.pdf',
      6 * 1.5, 2.2 * 1.5,
      mar=c(2,0,0.5,0), mgp=c(3,0.65,0))
X <- seq(0, 0.3, 0.001)
Y <- dnorm(X, 0.12, 0.021)
plot(X, Y, type = 'l', axes = FALSE,
     xlim = c(0.06, 0.21), col = COL[5], lwd = 2)
axis(1, at = c(0.08, 0.12, 0.14, 0.16),
     label=expression(0.08, H[0]*': p = 0.12  ',
                      hat(p)*' = 0.14', 0.16),
     cex.axis = 1)
these <- which(X >= 0.14)
polygon(c(X[these[1]], X[these], X[rev(these)[1]]),
        c(0,Y[these],0), col=COL[1])

yMax <- max(Y)
arrows(0.082, yMax*.63, 0.09, yMax*.48,
       length=0.1, lwd=1.5)
text(0.085, yMax*.8,
     expression('distribution of '*hat(p)),
     cex=1, pos=2)
text(0.085, yMax*.7,
     expression('if '*H[0]*' was true'),
     cex=1, pos=2)

xpos <- c(0.165, 0.155)
yMax <- 18
arrows(xpos[1], 0.5 * yMax, xpos[2], yMax / 3,
       length=0.1, col=COL[1], lwd=1.5)
text(xpos[1], .83*yMax,
     expression('chance of observed '*hat(p)),
     pos=4, cex=1, col=COL[1])
text(xpos[1], .73*yMax,
     expression('or another '*hat(p)*' that is even'),
     pos=4, cex=1, col=COL[1])
text(xpos[1], .63*yMax,
     expression('more favorable towards '*H[A]*","),
     pos=4, cex=1, col=COL[1])
text(xpos[1], .53*yMax,
     expression('if '*H[0]*' is true'),
     pos=4, cex=1, col=COL[1])

abline(h=0)


dev.off()


