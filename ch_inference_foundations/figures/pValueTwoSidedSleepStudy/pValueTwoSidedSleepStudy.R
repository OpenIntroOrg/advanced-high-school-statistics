
pdf('pValueTwoSidedSleepStudy.pdf', 3.5, 2.3)

#===> plot <===#
par(las=1, mar=c(1.8,0,0.5,0), mgp=c(3,0.6,0))
X <- seq(-4,4,0.01)
Y <- dnorm(X)
plot(X, Y, type='l', axes=F, xlim=c(-3.4,3.4))
axis(1, at=c(-5, 0, 5), label=expression(0, mu[0]*' = 7', 0), cex.axis=0.9)
these <- which(X*0.17 + 7 >= 7.36)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC', border='#000000BB')
these <- which(X*0.17 + 7 <= 6.64)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC', border='#000000BB')

#arrows(1.3,0.28, 0.43, 0.28, length=0.07)
#text(-.88, 0.13, '  40%\n(0.40)', cex=0.8)

lines(X, Y)
abline(h=0)


dev.off()
