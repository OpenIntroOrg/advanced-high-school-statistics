library(openintro)

myPDF('hsMaleHeightsWPValue.pdf', 5, 1.5, mgp=c(3, 0.3, 0))

#===> plot <===#
par(las=1, mar=c(1.4,0,0.2,0))
X <- seq(-5,5,0.01)
Y <- dt(X, 20)
plot(X, Y, type='l', axes=F, xlim=c(-3.3,3.3))
axis(1, at=c(-5, 0, 1.12, 5), label=expression(0, H[0]*': '*mu*' = 70.43  ', bar(x)*' = 71.8', 0), cex.axis=0.75)
these <- which(X >= 1.12)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC', border='#000000BB')
yMax <- max(Y)

text(0, yMax*.4, '0.869', cex=1)

arrows(2, yMax*.6, 2, yMax/5, length=0.1)
text(2, yMax*.6, 'single tail\n 0.131', pos=3, cex=1)

#arrows(1.3,0.28, 0.43, 0.28, length=0.07)
#text(-.88, 0.13, '  40%\n(0.40)', cex=0.8)

lines(X, Y)
abline(h=0)


dev.off()
