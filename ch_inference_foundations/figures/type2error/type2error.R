
#===> plot <===#
par(las=1, mar=c(1.5,0,0.5,0), mgp=c(3,0.5,0))
X <- seq(-4,8,0.01)
Y <- dnorm(X)
Y1 <- dnorm(X, mean=2.77777777)
plot(X, Y, type='n', axes=F, xlim=c(-3.4,7.4))
lines(X, Y1)
axis(1, at=-3:8, label=round(1800*(-3:8),2), cex.axis=0.7)
these <- which(X >= 1.65)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y1[these],0), col='#D5E5F5')
#polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC')
lines(rep(2.77777, 2), c(0, max(Y1)), lty=3, col='#BBBBBB')

text(2.9, 0.15, 'power', cex=0.8)

#text(-.1, 0.15, '0.95', cex=0.8)
#arrows(1.95,0.14, 1.95, 0.02, length=0.07)
#text(1.95, 0.14, '0.05', cex=0.8, pos=3)

arrows(0.3, 0.13, 1.15, 0.045, length=0.07)
text(0.2, 0.13, 'Type 2 Error', pos=3, cex=0.8)

lines(X, Y, col='#777777', lty=2)
abline(h=0)
legend('topright', lty=c(2,1), col=c('#777777', '#000000'), legend=expression(H[0], 'diff. = $5000'))