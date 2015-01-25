
#===> plot <===#
par(las=1, mar=c(1.5,0,0.5,0), mgp=c(3,0.5,0))
X <- seq(-4,4,0.01)
Y <- dnorm(X)
plot(X, Y, type='l', axes=F, xlim=c(-3.4,3.4))
axis(1, at=-3:3, label=round(2.84 + 0.46*(-3:3),2), cex.axis=0.7)
these <- which(X >= (3.8-2.84)/0.46)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC')
these <- which(X <= (1.88-2.84)/0.46)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col='#CCCCCC')

arrows((3.8-2.84)/0.46, 0.14, (3.8-2.84)/0.46, 0.06, length=0.07)
text((3.8-2.84)/0.46, 0.14, 'observed', cex=0.8, pos=3)

arrows(-2.3, 0.14, -2.3, 0.04, length=0.07)
text(-2.3, 0.14, 'at least as\nextreme as\nobserved under\nalt. hyp.', cex=0.8, pos=3)

lines(X, Y)
abline(h=0)
