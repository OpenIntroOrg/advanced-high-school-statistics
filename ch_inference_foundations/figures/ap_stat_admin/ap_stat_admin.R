library(openintro)
data(COL)

myPDF('ap_stat_admin_2_sided_test.pdf', 6.5, 2.7,
     mar=c(2,0,0.5,0), mgp=c(3,0.65,0))

X <- seq(0.3, 0.9, 0.0015)
Y <- dnorm(X, 0.594, 0.06745565)
plot(X, Y, type='l', axes=FALSE,
     xlim=c(0.39, 0.8), lwd=1.5,
     xlab = "", ylab = "")
par(mgp=c(3, 0.77, 0))
d <- 0.736 - 0.594
axis(1, at = c(0.594 - d, 0.594, 0.736),
     label=expression('0.452',
                      H[0]*': p = 0.594',
                      hat(p)*' = 0.736'),
     cex.axis = 0.87)
these <- which(X <= 0.594 - d)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]),
        c(0,Y[these],0), col=COL[1])
these <- which(X >= 0.736)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]),
        c(0,Y[these],0), col=COL[1])
yMax <- max(Y) * 1.1

arrows(0.75, yMax/3, 0.75, yMax/7, length=0.1,
       col=COL[1], lwd=1.5)
text(0.75, yMax / 3, 'right tail', pos=3,
     cex=1, col=COL[1])

x <- 0.594 - d - 0.01
arrows(x, yMax / 3, x, yMax / 7, length = 0.1,
       col = COL[1], lwd = 1.5)
text(x, yMax / 2.3,
     expression('observations just as'),
     pos=3, cex=1, col=COL[1])
text(x, yMax / 3,
     expression('unusual as '*hat(p)*' under '*H[0]),
     pos=3, cex=1, col=COL[1])

lines(X, Y, lwd=1.5)
abline(h=0)
dev.off()
