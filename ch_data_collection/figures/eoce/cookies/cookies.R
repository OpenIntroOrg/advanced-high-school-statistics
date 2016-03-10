library(openintro)

makeCircle <- function(x,y,r, col = COL[1], ...){
	t <- seq(0,2*pi, length.out=99)
	X <- x + r*cos(t)
	Y <- y + r*sin(t)
	polygon(X, Y, col = col, ...)
}

makeCookies <- function(nrow,ncol,labels=NULL, lcex=1, pch=TRUE, ...){
	plot(0,0,xlim=c(1/2,nrow+1/2), ylim=c(1/2,ncol+1/2),
		type='n', xlab='', ylab='', axes=FALSE)
	for(i in 1:nrow){
		for(j in 1:ncol){
			makeCircle(i,j,0.4, ...)
			if(!is.null(labels[1])){
				l <- labels[(i-1)*ncol+j]
				makeCircle(i,j,0.4, col = COL[l], ...)
				if(pch==TRUE){
					points(i,j,pch=l,cex=lcex, lwd = 4)
					points(i,j,pch=l,cex=lcex, col = "white", lwd = 2)
				} else {
					text(i,j,l, cex=lcex)
				}
			}
		}
	}
	#box()
  lines(x = c(0.5, 0.5), y = c(0.5, 4.5))
  lines(x = c(0.5, 6.5), y = c(4.5, 4.5))
  lines(x = c(6.5, 6.5), y = c(0.5, 4.5))
  lines(x = c(0.5, 6.5), y = c(0.5, 0.5))
  lines(x = c(1, 6), y = c(4.6, 4.6), lty = 2)
}

pdf('cookiesA.pdf', 6/2, 4.1/2)
par(mar=rep(0.2,4))
makeCookies(6,4, labels=c(1,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2)*2-1, 1, lwd=2)
dev.off()

pdf('cookiesB.pdf', 6/2, 4.1/2)
par(mar=rep(0.2,4))
makeCookies(6,4, labels=c(rep(1,12), rep(2,12))*2-1, 1, lwd=2)
dev.off()