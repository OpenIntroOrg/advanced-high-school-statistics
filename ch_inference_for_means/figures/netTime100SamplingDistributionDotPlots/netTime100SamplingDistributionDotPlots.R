library(openintro)
data(COL)

myPDF('netTime100SamplingDistribution.pdf', 6, 2.4,
      mar = c(3.5,.2, .2, .2), mgp = c(2.2, 0.55, 0))

set.seed(5)
#run12 <- subset(run12, event == "10 Mile")
means1 <- vector("numeric", 300)
for (i in 1:300) {
  temp <- sample(nrow(run12), 50)
  means1[i] <- mean(run12$time[temp], na.rm=TRUE)
}
means1 = ceiling(means1*2) / 2

means2 <- vector("numeric", 100)
for (i in 1:300) {
  temp <- sample(nrow(run12), 50)
  means2[i] <- mean(run12$time[temp], na.rm=TRUE)
}
means2 = ceiling(means2*2) / 2

diffmean = means1 - means2

#plot(min)
stripchart(diffmean,method="stack",offset=0.4,pch=21,col=COL[1],at=0,frame=FALSE,bty='n',xaxt='n',xlim=c(-12,12),xlab="Difference in sample means",cex=0.65)
axis(1, at=c(-12,-9,-6, -3, 0, 3, 6,9,12), labels=c('-12','-9', '-6', '-3', '0', '3','6','9','12'))

lines(c(-2.9, -2.9), c(0, 9), lty = 1)
lines(c(2.9, 2.9), c(0, 9), lty = 1)


dev.off()
