library(openintro)
data(COL)

data(run10Samp)
d <- run10Samp

myPDF("run10SampHistograms.pdf", 7, 2.8,
      mar = c(3.5, 3.5, 0.5, 1.5),
      mgp = c(2.2, 0.55, 0))
histPlot(d$time,
         main = "",
         xlab = "Time (minutes)",
         ylab = "Frequency",
         yaxs="i",
         col = COL[1])
axis(1, at = seq(50, 150, 10))
dev.off()
