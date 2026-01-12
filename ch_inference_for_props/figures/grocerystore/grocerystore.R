library(openintro)
library(plyr)

data(COL)

set.seed(133)
c1 = rbinom(400,50,0.45)/50
c2 = rbinom(400,60,.35)/60
d <- round_any(c1-c2,.01)
################################################################

myPDF("grocerystoredifferencedotplot.pdf", 5.7, 3,
      mar = c(4,.2, .2, .2), mgp = c(2., 0.55, 0))

stripchart(d, method="stack",offset = .4, pch=21,at=0,frame=FALSE,bty='n', col = COL[1],xlim=c(-.2,.41),cex.axis=.8, cex.lab=.8,xlab="Difference in sample proportions (County 1 - County 2)")
#axis(1, at=c(-10, -5,0,1.5,10, 15,20), labels=c('-0.10', '-0.05','0','0.05','0.10', '0.15','0.20'))
lines(c(-.005, -.005), c(0, 10), lty = 1)
text(-.05, 1, expression(hat(p)[1]-hat(p)[2] < 0), pos = 3, cex=.8)
dev.off()

##################


myPDF("grocerystoreCounty1.pdf", 8, 4.5,
      mar = c(4,.5, 0, .2))

stripchart(c1, method="stack",ch=21,at=0,frame=FALSE,bty='n',col = COL[1], xlim=c(.15,.55), xlab="Proportion from County 1 samples; n=30, p=0.45")
axis(1, at=c(0.25, 0.35, 0.45, 0.55, 0.65), labels=c('0.25', '0.35', '0.45', '0.55', '0.65'))

dev.off()


myPDF("grocerystoreCounty2.pdf", 8, 4.5,
      mar = c(4,.5, 0, .2))

stripchart(c2, method="stack",pch=19,at=0,frame=FALSE,bty='n',col = COL[1], xlim=c(.05,.45), xlab="Proportion from County 2 samples; n=40, p=0.35")
axis(1, at=c(.15,.25,.35,.45,.55), labels=c('0.15', '0.25', '0.35', '0.45', '0.55'))


dev.off()



