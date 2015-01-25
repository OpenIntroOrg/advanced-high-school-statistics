library(openintro)
data(COL)
data(possum)
myPDF('scattHeadLTotalL.pdf', 6*1.15, 4*1.15, mar=c(3.7,3.7,0.5,0.5), mgp=c(2.6,0.55,0), las=1)
plot(possum$totalL, possum$headL, axes=FALSE, pch=19, col=COL[1,2], cex=1.2, xlab='Total length (cm)', ylab='Head length (mm)')
axis(1, at = seq(70, 100, 5))
axis(2, at = seq(80, 105, 5))
points(89, 94.1, col=COL[4], cex=1.7)
lines(rep(89,2), c(0,93.8), lty=2, col=COL[4])
lines(c(0,88.7), rep(94.1,2), lty=2, col=COL[4])

#abline(lm(headL ~ totalL, possum))


dev.off()
