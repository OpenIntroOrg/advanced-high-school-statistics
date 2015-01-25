library(openintro)
data(COL)
data(run10)
set.seed(52)

pdf('95PercentConfidenceIntervalPHat.pdf', 6, 4)

par(mar=c(2, 1, 1, 1), mgp=c(2.7, 0.9, 0))
p <- 0.60
n <- 1000
k <- 25

set.seed(1)
phat <- c()
SE   <- c()
for(i in 1:k){
	d       <- sample(0:1, n, TRUE, c(1-p, p))
	phat[i] <- mean(d)
	SE[i]   <- sd(d) / sqrt(n)
}


xR <- p + c(-1, 1) * 4 * mean(SE)
yR <- c(0, 41*k/40)


plot(xR, yR, type='n',
     xlab='Proportion', ylab='', axes=FALSE)
abline(v = p, lty = 2, col = COL[6])
at <- c(0.55, 0.60, 0.65)
labels <- c(0.55, "p = 0.60", 0.65)
axis(1, at, labels, cex.axis=1.15)
for(i in 1:k){
	ci <- phat[i] + 2*c(-1,1)*SE[i]
	if(abs(phat[i]-p) > 1.96*SE[i]){
		col <- COL[4]
		points(phat[i], i, cex=1.4, col=col)
		lines(ci, rep(i, 2), col=col, lwd=4)
	} else {
		col <- COL[1]
	}
	points(phat[i], i, pch=20, cex=1.2, col=col)
	lines(ci, rep(i, 2), col=col)
}

dev.off()

