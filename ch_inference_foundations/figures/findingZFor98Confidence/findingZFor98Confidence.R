
pdf('findingZFor98Confidence.pdf', 3.5, 2)

#===> plot <===#
par(las=1, mar=c(1.8,0,0.5,0), mgp=c(3,0.5,0))
X <- seq(-4,4,0.01)
Y <- dnorm(X)
plot(X, Y, type='l', axes=F, xlim=c(-3.4,3.4))
axis(1, at=c(-2.3, 0, 2.3), format(c(-2.33, 0, 2.33)), cex.axis=1.1)
these <- which(X >= 2.3)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC', border='#000000BB')
these <- which(X <= -2.3)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC', border='#000000BB')

arrows(-2.6,0.12, -2.5, 0.03, length=0.07)
text(-2.6, 0.17, '1%', cex=1.2)
arrows(2.6,0.12, 2.5, 0.03, length=0.07)
text(2.6, 0.17, '1%', cex=1.2)
text(0, 0.15, '98% in the\nmiddle', cex=1.2)

lines(X, Y)
abline(h=0)


dev.off()
