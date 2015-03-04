library(openintro)
data(COL)

myPDF('netTime1000SamplingDistribution.pdf', 6.5, 3.2,
      mar = c(4, 4, 1, 1),
      mgp = c(2.7,0.7,0))

set.seed(5)
means <- c()
for (i in 1:1000) {
  temp <- sample(nrow(run10), 100)
  means[i] <- mean(run10$time[temp], na.rm=TRUE)
}

plot(0, 0,
     type = 'n',
     xlim = c(70, 125),
     ylim = c(0, 145),
     xlab = 'Sample mean',
     ylab = 'Frequency',
     axes = FALSE)
m <- mean(run10$time, na.rm = TRUE)
s <- sd(run10$time, na.rm = TRUE)/10
histPlot(means, col = COL[1], breaks = 25, add = TRUE)
abline(h = 0)
axis(1, at = seq(0, 200, 10))
axis(1, at = seq(0, 200, 10) + 5, rep("", 21), tcl = -0.15)
axis(2, at = c(0, 50, 100, 150))
text(112, 75,
     paste("The distribution of sample means,",
           "shown here, is much narrower than",
           "the distribution of raw observations.",
           sep = "\n"))
dev.off()
