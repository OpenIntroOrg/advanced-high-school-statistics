library(openintro)
data(COL)

set.seed(5)
winnings <- 30 * exp(rt(20, 3)) - 150
mean(winnings)

myPDF('pokerProfitsCanApplyNormalToSampMean.pdf', 5, 3,
      mar = c(3.7, 3.7, 0.7, 0.7),
      mgp = c(2.3, 0.6, 0))
histPlot(winnings,
         xlab = 'Poker Winnings and Losses (US$)',
         ylab = 'Frequency',
         yaxs="i",
         col = COL[1])
dev.off()
