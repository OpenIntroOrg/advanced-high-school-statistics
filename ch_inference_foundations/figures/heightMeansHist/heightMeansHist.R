
# use this to load in the data (d) and the simulated means (M)
# load('heightMeansHist.RData')

# code used to run the simulation
#h   <- d$height1/2.54
#wts <- d$samplingWeight
#n <- length(h)
#M <- rep(NA, 10000)
#for(i in 1:10000){
#	S <- sample(h, 100, T, wts)
#	M[i] <- mean(S)
#}

hold <- hist(M, breaks=25)

par(mfrow=c(1,1), las=1, mgp=c(2,.7,0), mar=c(3,0,1,0))
R <- mean(M) + max(abs(range(hold$breaks) - mean(M)))*c(-1,1)
plot(0, 0, type='n', xlab='male heights (in.)', ylab='', axes=F, main='',
	xlim=R, ylim=range(hold$density)*1.1)
for(i in 1:length(hold$counts)){
	rect(hold$breaks[i], 0, hold$breaks[i+1], hold$density[i],
		 border='#222222', col='#BBCCDD')
}
axis(1)
mPop  <- mean(M)
mSamp <- 70
H <- max(hold$density)*1.1
abline(v=mPop, col='#663300', lty=3)
abline(v=mSamp, col='#227700', lty=3)

text(mPop, H*0.95, 'population mean', pos=2, col='#663300')
text(mSamp, H*0.7, 'sample mean', pos=4, col='#227700')
