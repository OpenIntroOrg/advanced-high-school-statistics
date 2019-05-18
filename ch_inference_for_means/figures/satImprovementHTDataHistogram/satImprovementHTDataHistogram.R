library(openintro)
data(COL)

set.seed(2)
x <- round(rnorm(30, 120, 70))
t.test(x-100)
mean(x)
sd(x)

myPDF('satImprovementHTDataHistogram.pdf', 3.6, 1.8,
      mar = c(3.1, 2, 0.4, 1),
      mgp = c(2, 0.55, 0))
histPlot(x,
         xlab = 'Differences',
         ylab = '',
         main = '',
         yaxs="i",
         axes = FALSE,
         col = COL[1])
axis(1)
axis(2, at = seq(0, 10, 5))
dev.off()
