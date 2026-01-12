library(openintro)
library(splines)


county23 = read.csv("https://www.dropbox.com/scl/fi/26nlqmfwuizg4vx9c2p7g/ACS2023wide_final.csv?rlkey=yt7l9xt0dulny0ho7i6lsxyq6&st=sm621q4x&dl=1")

ca<- subset(county23, state=="California")
fl<- subset(county23, state=="Florida")


myPDF("countycompareFL.pdf", 4, 2.6,
      mar = c(4, 0, 0, 0),
      mgp = c(3, 0.55, 0))
stripchart(round(fl$UNEMPLOYMENT.RATE..age.20.64.,0), method="stack",cex=.75,cex.lab=0.9,offset = .5,pch=19,at=0,frame=FALSE,bty='n',col = COL[4], xlim=c(0,13),ylim=c(0,20), xlab="Unemployment rate for each of\n the 67 counties in Florida")
dev.off()

myPDF("countycompareCA.pdf", 4, 2.1,
      mar = c(4, 0, 0, 0),
      mgp = c(3, 0.55, 0))
stripchart(round(ca$UNEMPLOYMENT.RATE..age.20.64.,0), method="stack",cex= .75,cex.lab=0.9,offset = .5,pch=19,at=0,frame=FALSE,bty='n',col = COL[1], xlim=c(0,13), ylim=c(0,20),xlab="Unemployment rate for each of\n the 58 counties in California")
dev.off()