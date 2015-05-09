makeCircle <- function(x,y,r,...){
	t <- seq(0,2*pi, length.out=99)
	X <- x + r*cos(t)
	Y <- y + r*sin(t)
	lines(X,Y,...)
}

makeLayout <- function(nrow,ncol,labels=NULL, lcex=1, pch=TRUE, ...){
	plot(0,0,xlim=c(1/2,nrow+1/2), ylim=c(1/2,ncol+1/2),
		type='n', xlab='', ylab='', axes=FALSE)
	for(i in 1:nrow){
		for(j in 1:ncol){
			makeCircle(i,j,0.4, ...)
			if(!is.null(labels[1])){
				l <- labels[(i-1)*ncol+j]
				if(pch==TRUE){
					points(i,j,pch=l,cex=lcex, lwd = 2)
				} else {
					text(i,j,l, cex=lcex)
				}
			}
		}
	}
	#box()
  lines(x = c(0.5, 0.5), y = c(0.5, 3.5))
  lines(x = c(0.5, 6.5), y = c(3.5, 3.5))
  lines(x = c(6.5, 6.5), y = c(0.5, 3.5))
  lines(x = c(0.5, 6.5), y = c(0.5, 0.5))
  lines(x = c(1, 6), y = c(3.6, 3.6), lty = 3)
}

pdf('alfalfaA.pdf', 6/2, h = 1.5)
par(mar=rep(0.2,4))
makeLayout(6,3, labels=c(rep(c(3,2,1), 6)), 1, lwd=2)
dev.off()

pdf('alfalfaB.pdf', 6/2, 1.5)
par(mar=rep(0.2,4))
makeLayout(6,3, labels=c(rep(1,6), rep(2,6), rep(3,6)), 1, lwd=2)
dev.off()

pdf('alfalfaC.pdf', 6/2, 1.5)
par(mar=rep(0.2,4))
makeLayout(6,3, labels=c(1,2,3,3,2,1,1,2,3,3,2,1,1,2,3,3,2,1), 1, lwd=2)
dev.off()