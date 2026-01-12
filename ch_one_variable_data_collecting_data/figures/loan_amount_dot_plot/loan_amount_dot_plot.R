library(openintro)

myPDF("loan_amount_dot_plot.pdf",
      5.5,
      1.25,
      mar = c(3.6, 1, 0, 1),
      mgp = c(2.5, 0.7, 0),
      tcl = -0.4)
d <- loan50$loan_amount
dotPlot(d,
        at = 1.007,
        xlab = 'Loan Amount,Rounded to Nearest $1000',
        ylab = '',
        pch = 20,
        col = COL[1, 3],
        cex = 3, # 1.5,
        xlim = c(0, 1.05 * max(d)),
        ylim = c(0.95, 1.05),
        axes = FALSE)
abline(h = 0.983)
AxisInDollars(1, pretty(c(0, d)))
M <- mean(d)
polygon(M + c(-1, 1, 0) * 1500,
        c(0.95, 0.95, 0.98),
        border = COL[4],
        col = COL[4])
dev.off()



set.seed(10)
myPDF("loan_amount_dot_plot_stacked.pdf",
      5.5,
      2.5,
      mar = c(3.6, 1, 0.5, 1),
      mgp = c(2.5, 0.7, 0))
round.to <- 2000
binned <- round.to * round(d / round.to)
tab <- table(binned)
cex    <- 1
plot(0,
        at = 1.007,
        xlab = 'Loan Amount',
        ylab = '',
        pch = 20,
        col = COL[1, 3],
        cex = 3, # 1.5,
        xlim = c(0, 1.05 * max(d)),
        ylim = c(0.95, 1.05),
        axes = FALSE)
for (i in 1:length(tab)) {
  points(rep(as.numeric(names(tab[i])), tab[i]),
         1.5 * (1:tab[i]) - 0.4,
         pch = 19,
         col = COL[1],
         cex = 2 * cex)
}
abline(h = 0)
AxisInDollars(1, pretty(c(0, d)))
polygon(M + c(-1, 1, 0) * 1500,
        c(-1.2, -1.2, -0.1),
        border = COL[4],
        col = COL[4])
dev.off()



myPDF("loan_amount_dot_plot_stacked_rounded.pdf", 7, 1.4,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, y,
     xlab = "Loan Amount, Rounded to Nearest $1000",
     axes = FALSE, ylab = "", xlim = c(0, 70),
     ylim = c(0, 1.1*max(tmp)),
     col = COL[1], cex = cex, pch = 19, yaxs="i")
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()




myPDF("loan_amount_dot_plot_stacked_rounded_hist.pdf", 7, 2,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, 3 * y - 1.5,
     xlab = "Loan Amount, Rounded to Nearest $1000",
     axes = FALSE, ylab = "", xlim = c(0, 70),
     ylim = c(0, 5 * max(tmp)),
     col = COL[1], cex = cex, pch = 19, yaxs="i")
histPlot(d, breaks = 15, add = TRUE)
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()


myPDF("loan_amount_dot_plot_stacked_rounded_with_sd.pdf", 7, 1.4,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, y, type = "n",
     xlab = "Loan Amount, Rounded to Nearest $1000",
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


M
sd(d)
