library(openintro)
data(email50)
data(loan50)
data(COL)

x <- loan50$loan_amount
H <- hist(x,
          breaks = 12,
          plot = FALSE)
counts <- rbind(H$counts)
from   <- head(H$breaks, -1)
to     <- tail(H$breaks, -1)
colnames(counts) <- paste(from, 'to', to)
#require(xtable)
#xtable(counts)

myPDF("loan50LoanAmountHist.pdf",
      6.05, 3.1,
      mar = c(3.5, 3.5, 0.5, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(x,
         breaks = seq(0, 40000, 5000),
         xlab = 'Loan Amount',
         ylab = "Frequency",
         # ylim = c(0, 20),
         col = COL[1],
         border = COL[5],
         axes = FALSE)
bin <- table(round(x / 2000) * 2000)
for (i in 1:length(bin)) {
  # points(rep(as.numeric(names(bin)[i]), bin[i]), 1:(bin[i]), cex = 2)
}
axis(2)
AxisInDollars(1, pretty(x))
dev.off()




myPDF("loan50DotPlotStackedRounded.pdf", 7, 1.4,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, y,
     xlab = "Number of Characters (in thousands)",
     axes = FALSE, ylab = "", xlim = c(0, 70),
     ylim = c(0, 1.1*max(tmp)),
     col = COL[1], cex = cex, pch = 19, yaxs="i")
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()




myPDF("loan50DotPlotStackedRoundedHist.pdf", 7, 2,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, 3 * y - 1.5,
     xlab = "Loan amount (in thousands of dollars)",
     axes = FALSE, ylab = "", xlim = c(0, 70),
     ylim = c(0, 5 * max(tmp)),
     col = COL[1], cex = cex, pch = 19, yaxs="i")
histPlot(d, breaks = 15, add = TRUE)
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()


myPDF("loan50sDotPlotStackedRoundedWithSD.pdf", 7, 1.4,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, y, type = "n",
     xlab = "Loan amount (in thousands of dollars)",
     axes = FALSE, ylab = "", xlim = c(0, 70),yaxs="i",
     ylim = c(0, max(tmp) + 1))
M <- mean(round(d))
SD <- sd(round(d))
tmp <- rgb(0,0,0,0)
rect(M - 3 * SD, 0, M + 3 * SD, 1000, col = COL[7,4], border = tmp)
rect(M - 2 * SD, 0, M + 2 * SD, 1000, col = COL[7,3], border = tmp)
rect(M - SD, 0, M + SD, 1000, col = COL[7,2], border = tmp)
lines(c(M, M), c(0, 1000), col = COL[6])
points(x, y, col = COL[1], cex = cex, pch = 19)
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()

