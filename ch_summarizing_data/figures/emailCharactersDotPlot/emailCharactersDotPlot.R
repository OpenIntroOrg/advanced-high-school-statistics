library(openintro)
data(email50)
data(COL)


source("dotPlotStack.R")
# Quick thought for improved version...
# Write an optimization algorithm that swaps the
# order of two observations in the vector when moving
# one would result in an improved "settling".


myPDF("emailCharactersDotPlot.pdf", 7.5, 1.25,
      mar = c(3.6, 1, 0, 1), las = 1,
      mgp = c(2.5, 0.7, 0), tcl = -0.4)
d <- email50$num_char
dotPlot(d, xlab = 'Number of Characters (in thousands)',
        ylab = '', pch = 20, col = COL[1,2], cex = 1.5,
        ylim = c(0.95, 1.05), axes = FALSE)
axis(1, at = seq(0, 70, 10))
M <- mean(d)
polygon(M + c(-2, 2, 0) * 1.5, c(0.95, 0.95, 0.98),
        border = COL[4], col = COL[4])
dev.off()




set.seed(10)
myPDF("emailCharactersDotPlotStacked.pdf", 5, 2.7,
      mar = c(3.6, 1, 0.5, 1), las = 1,
      mgp = c(2.5, 0.7, 0))
N      <- 35
#stacks <- table(cut(d, seq(0,max(d)+5, length.out=N)))
#edges  <- seq(0,max(d)+5, length.out=N)
radius  <- 1.8
cex     <- 1.5
seed    <- 3
stacks  <- dotPlotStack(d, radius = radius, addDots = FALSE,
                        pch = 19, col = COL[1], cex = 1.25,
                        seed = seed)
plot(0, type = "n",
     xlab = "Number of Characters (in thousands)",
     axes = FALSE, ylab = "", xlim = c(0, 75),
     ylim = c(-1, max(stacks[[1]])))
dotPlotStack(d, radius = radius, pch = 19,
             col = COL[1], cex = cex, seed = seed)
abline(h = 0)
axis(1, at = seq(0, 70, 10))
polygon(M + c(-1.7, 1.7, 0) * 2.5, c(-1.7, -1.7, -0.1),
        border = COL[4], col = COL[4])
dev.off()



myPDF("emailCharactersDotPlotStackedRounded.pdf", 7, 1.4,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, y,
     xlab = "Number of Characters (in thousands)",
     axes = FALSE, ylab = "", xlim = c(0, 70),
     ylim = c(0, max(tmp)),
     col = COL[1], cex = cex, pch = 19)
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()



myPDF("emailCharactersDotPlotStackedRoundedWithSD.pdf", 7, 1.4,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, y, type = "n",
     xlab = "Number of Characters (in thousands)",
     axes = FALSE, ylab = "", xlim = c(0, 70),
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




myPDF("emailCharactersDotPlotStackedRoundedHist.pdf", 7, 2,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, 3 * y - 1.5,
     xlab = "Number of Characters (in thousands)",
     axes = FALSE, ylab = "", xlim = c(0, 70),
     ylim = c(0, 5 * max(tmp)),
     col = COL[1], cex = cex, pch = 19)
histPlot(d, breaks = 15, add = TRUE)
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()


M
sd(d)




