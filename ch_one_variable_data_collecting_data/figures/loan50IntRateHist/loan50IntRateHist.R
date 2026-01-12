library(openintro)
data(email50)
data(COL)

x <- loan50$interest_rate
H <- hist(x,
          breaks = 12,
          plot = FALSE)
counts <- rbind(H$counts)
from   <- head(H$breaks, -1)
to     <- tail(H$breaks, -1)
colnames(counts) <- paste(from, 'to', to)
#require(xtable)
#xtable(counts)

myPDF("loan50IntRateHistRelativeFreq.pdf",
      6.05, 3.1,
      mar = c(3.5, 3.5, 0.5, 1),
      mgp = c(2.4, 0.7, 0))
      
histPlot(x,
         breaks = seq(5, 27.5, 2.5),
         # breaks = seq(0, 350e3, 25e3),
         # breaks = seq(0, 350e3, 25e3),
         # breaks = seq(0, 40000, 5000),
         xlab = 'Interest Rate',
         ylab = '',
         # ylim = c(0, 20),
         yaxs="i",
         col = COL[1],
         border = COL[5],
         axes = FALSE)
bin <- table(round(x / 2000) * 2000)
for (i in 1:length(bin)) {
  # points(rep(as.numeric(names(bin)[i]), bin[i]), 1:(bin[i]), cex = 2)
}
par(mgp = c(3.8, 0.55, 0))
mtext("Relative Frequency", 2, las=0,
      line = 2.5,
      cex = 1.1)
at <- seq(0, 15, 2)
axis(2, at = at, labels = format(c(0,0.04,0.08,0.12,0.16,0.20,0.24,0.28)))
AxisInPercent(1, pretty(x))
dev.off()

myPDF("loan50IntRateHist.pdf",
      6.05, 3.1,
      mar = c(3.5, 3.5, 0.5, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(x,
         breaks = seq(5, 27.5, 2.5),
         # breaks = seq(0, 350e3, 25e3),
         # breaks = seq(0, 350e3, 25e3),
         # breaks = seq(0, 40000, 5000),
         xlab = 'Interest Rate',
         ylab = "Frequency",
         # ylim = c(0, 20),
         yaxs="i",
         col = COL[1],
         border = COL[5],
         axes = FALSE)
bin <- table(round(x / 2000) * 2000)
for (i in 1:length(bin)) {
  # points(rep(as.numeric(names(bin)[i]), bin[i]), 1:(bin[i]), cex = 2)
}
axis(2)
AxisInPercent(1, pretty(x))
dev.off()

myPDF("loan50IntRateHistMeanMedian.pdf",
      6.05, 3.1,
      mar = c(3.5, 3.5, 0.5, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(x,
         breaks = seq(5, 27.5, 2.5),
         # breaks = seq(0, 350e3, 25e3),
         # breaks = seq(0, 350e3, 25e3),
         # breaks = seq(0, 40000, 5000),
         xlab = 'Interest Rate',
         ylab = "Frequency",
         # ylim = c(0, 20),
         yaxs="i",
         col = COL[1],
         border = COL[5],
         axes = FALSE)
t.mean <- mean(loan50$interest_rate)
t.median <- median(loan50$interest_rate)
lines(rep(t.mean, 2), c(0, 9), lwd = 3, col = COL[4])
text(t.mean, 9, "Mean", pos = 4)
lines(rep(t.median, 2), c(0, 12), lwd = 3, col = COL[3])
text(t.median, 12, "Median", pos = 4)
bin <- table(round(x / 2000) * 2000)
for (i in 1:length(bin)) {
  # points(rep(as.numeric(names(bin)[i]), bin[i]), 1:(bin[i]), cex = 2)
}
axis(2)
AxisInPercent(1, pretty(x))
dev.off()
