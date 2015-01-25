
# use this to load in the data (d) and the simulated means (M)
# load('heightMeansHist.RData')

# code used to run the simulation
h   <- d$height1/2.54
wts <- d$samplingWeight
n <- length(h)
M5 <- rep(NA, 1000)
M15 <- rep(NA, 1000)
M45 <- rep(NA, 1000)
for(i in 1:1000){
	S <- sample(h, 45, T, wts)
	M5[i] <- mean(S[1:5])
	M15[i] <- mean(S[1:15])
	M45[i] <- mean(S)
}

hold5 <- hist(M5, breaks=25)
hold15 <- hist(M15, breaks=25)
hold45 <- hist(M45, breaks=25)

par(mfrow=c(3,1), las=1, mgp=c(2,.7,0), mar=c(3,0,1,0))
R <- mean(M5) + max(abs(range(hold5$breaks) - mean(M5)))*c(-1,1)
plot(0, 0, type='n', xlab='male heights (in.)', ylab='', axes=F, main='',
xlim=R, ylim=range(hold5$density)*1.1)
for(i in 1:length(hold5$counts)){
	rect(hold5$breaks[i], 0, hold5$breaks[i+1], hold5$density[i],
		 border='#222222', col='#BBCCDD')
}
axis(1)
text(67, max(hold5$density), 'samples of size 5')

plot(0, 0, type='n', xlab='male heights (in.)', ylab='', axes=F, main='',
xlim=R, ylim=range(hold15$density)*1.1)
for(i in 1:length(hold15$counts)){
	rect(hold15$breaks[i], 0, hold15$breaks[i+1], hold15$density[i],
		 border='#222222', col='#BBCCDD')
}
axis(1)
text(67, max(hold15$density), 'samples of size 15')

plot(0, 0, type='n', xlab='male heights (in.)', ylab='', axes=F, main='',
xlim=R, ylim=range(hold45$density)*1.1)
for(i in 1:length(hold45$counts)){
	rect(hold45$breaks[i], 0, hold45$breaks[i+1], hold45$density[i],
		 border='#222222', col='#BBCCDD')
}
axis(1)
text(67, max(hold45$density), 'samples of size 45')
