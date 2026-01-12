
library(openintro)
data(email50)
data(COL)
mycol <- rgb(0, 0, 0, max = 255, alpha = 10, names = "transparent")

myPDF("email50LinesCharacters.pdf", 6, 3.3, mar=c(3, 3.9, 0.5, 1.2), mgp=c(2.8, 0.5, 0))
plot(email50$num_char, email50$line_breaks, pch=19, cex=1.3, yaxs="i",col=COL[1,4], xlab="", ylab="Number of Lines", xaxs="i", ylim=c(0,1200), xlim=c(0,70),axes = FALSE,
     frame.plot=FALSE)
axis(1)
axis(2)
points(email50$num_char, email50$line_breaks, cex=1.3, col=COL[1,1])
mtext("Number of Characters (in thousands)", 1, 1.9)
rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col=mycol, border=NA)

dev.off()

