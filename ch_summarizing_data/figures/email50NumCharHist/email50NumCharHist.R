library(xtable)
library(openintro)
data(email50)
data(COL)

H <- hist(email50$num_char, breaks=12, plot=FALSE)
counts <- rbind(H$counts)
colnames(counts) <- paste(H$breaks[1:15], 'to', H$breaks[2:16])
require(xtable)
xtable(counts)

myPDF("email50NumCharHist.pdf",
      1.1 * 5.5, 3.3,
      mar = c(3.5, 3.5, 0.15, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(email50$num_char, breaks = 12,
         xlab = 'Number of Characters (in thousands)',
         ylab = "Frequency", ylim = c(0, 23), col = COL[1],
         border = COL[5], xlim = c(0, 70))
axis(1, at = seq(5, 65, 10), labels = rep("", 7),
     tcl = -0.15)
dev.off()

myPDF("email50NumCharHistWMeanMedian.pdf",
      1.1 * 5.5, 3.3,
      mar = c(3.5, 3.5, 0.15, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(email50$num_char, breaks = 12,
         xlab = 'Number of Characters (in thousands)',
         ylab = "Frequency", ylim = c(0, 23), col = COL[1],
         border = COL[5], xlim = c(0, 70))
axis(1, at = seq(5, 65, 10), labels = rep("", 7),
     tcl = -0.15)
t.mean <- mean(email50$num_char)
t.median <- median(email50$num_char)
lines(rep(t.mean, 2), c(0, 9), lwd = 3, col = COL[4])
text(t.mean, 9, "Mean", pos = 4)
lines(rep(t.median, 2), c(0, 15), lwd = 3, col = COL[3])
lines(rep(t.median, 2), c(0, 15), lwd = 3, col = COL[3])
text(t.median, 15, "Median", pos = 4)
dev.off()

d     <- 5 * (round(email50$num_char / 5 - 0.5) + 0.5)
steps <- seq(2.5, 67.5, length.out = 14)
ch    <- rep(0, length(steps))
for (i in 1:length(steps)) {
  ch[i] <- sum(d <= steps[i] + 1)
}

myPDF("email50NumCharCumulativeFreqHist.pdf",
      1.1 * 5.5, 3.3,
      mar = c(3.5, 3.5, 0.15, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(rep(steps, ch), breaks = 12,
         xlab = 'Number of Characters (in thousands)',
         ylab = "Cumulative Frequency",  col = COL[1],
         border = COL[5], xlim = c(0, 62.5),
         axes = FALSE)
axis(1)
axis(2, at = seq(0, 50, 10), labels = seq(0, 50, 10))
axis(1, at = seq(5, 65, 10), labels = rep("", 7),
     tcl = -0.15)
dev.off()
xtable(rbind(paste0(seq(0, 60, length.out = 13), "-",
                    seq(5, 65, length.out = 13)),
             ch))


d     <- round(email50$num_char - 0.5) + 0.5
steps <- seq(0.5, 64.5, length.out = 65)
ch    <- rep(0, length(steps))
for (i in 1:length(steps)) {
  ch[i] <- sum(d <= steps[i] + 1)
}

myPDF("email50NumCharCumulativeRFHist.pdf",
      1.1 * 5.5, 3.3,
      mar = c(3.5, 3.5, 0.15, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(rep(steps, ch), breaks = 12,
         xlab = 'Number of Characters (in thousands)',
         ylab = "Cumulative Relative Frequency", col = COL[1],
         border = COL[5], xlim = c(0, 70),
         axes = FALSE)
axis(1)
axis(2, at = seq(0, 50, 10), labels = seq(0, 1, 0.2))
axis(1, at = seq(5, 65, 10), labels = rep("", 7),
     tcl = -0.15)
dev.off()
xtable(rbind(paste0(seq(0, 65, length.out = 14), "-",
                    seq(5, 70, length.out = 14)),
             ch))


d     <- round(email50$num_char - 0.5) + 0.5
steps <- seq(0.5, 69.5, length.out = 70)
ch    <- rep(0, length(steps))
for (i in 1:length(steps)) {
  ch[i] <- sum(d <= steps[i] + 1)
}
myPDF("email50NumCharCumulativeHistFine.pdf",
      1.1 * 5.5, 3.3,
      mar = c(3.5, 3.5, 0.15, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(rep(steps, ch), breaks = 50,
         xlab = 'Number of Characters (in thousands)',
         ylab = "Cumulative Relative Frequency", col = COL[1],
         border = COL[5], xlim = c(0, 70),
         axes = FALSE)
axis(1)
axis(2, at = seq(0, 50, 10), labels = seq(0, 1, 0.2))
axis(1, at = seq(5, 65, 10), labels = rep("", 7),
     tcl = -0.15)
dev.off()
xtable(rbind(paste0(seq(0, 69, length.out = 70), "-",
                    seq(1, 70, length.out = 70)),
             ch))

d     <- round(email50$num_char - 0.5) + 0.5
steps <- seq(0.5, 69.5, length.out = 70)
ch    <- rep(0, length(steps))
for (i in 1:length(steps)) {
  ch[i] <- sum(d <= steps[i] + 1)
}