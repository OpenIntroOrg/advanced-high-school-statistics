library(openintro)
data(COL)

data(run17)
#d <- run17samp
 set.seed(50)
 run17samp <- run17[sample(1:nrow(run17), 100), ]
 
myPDF("run17sampHistograms.pdf", 7, 2.5,
      mar = c(3.3, 3.5, 0.5, 1.5),
      mgp = c(2.2, 0.55, 0))
histPlot(d$time,
         main = "",
         xlab = "Time (minutes)",
         ylab = "Frequency",
         yaxs="i",
         col = COL[1])
axis(1, at = seq(50, 150, 10))
dev.off()
