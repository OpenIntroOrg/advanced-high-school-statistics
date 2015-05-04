library(openintro)
data(COL)
set.seed(2)

X <- 9
n <- 142
p <- 0.1
n.sim <- 1e4

pHat <- rbinom(n.sim, n, p) / n
M    <- max(pHat) * n

sum(pHat <= X / n) / n.sim

myPDF("MedConsNullSim.pdf", 5.5, 2.5,
      mgp = c(2, 0.5, 0),
      mar = c(3.1, 4.6, 0.5, 0.5))
histPlot(pHat,
         breaks = (-1:(2 * M) + 0.75) / 2 / n,
         xlab = expression(hat(p)[sim]*"    "),
         ylab = "",
         col = COL[7, 3])
histPlot(pHat[pHat <= X / n],
         breaks = (-1:(2 * M) + 0.75) / 2 / n,
         col = COL[1],
         add = TRUE)
x <- seq(0, M / n + 0.05, length.out = 50)
y <- n.sim * dnorm(x, p, sqrt(p * (1 - p) / n)) / n
# these <- which(x > 2 * p - X / n)
# polygon(x[c(these[1], these, tail(these, 1))],
#         c(0, y[these], 0),
#         border = "#00000000",
#         col = COL[1,3])
lines(x, y, lwd = 1.5, col = COL[5, 4])
arrows(0.16, 500, 0.15, 300, length = 0.1)
text(0.185, 750,
     paste0("Observations over here\n",
            "are just as extreme,\n",
            "so they should also count\n",
            "towards the p-value"),
     cex = 0.75)
par(las = 0)
mtext("Number of simulations", 2, 3.3)
dev.off()


myPDF("MedConsNullNormal.pdf", 5, 2.25,
      mgp = c(2.2, 0.5, 0),
      mar = c(3.3, 0.5, 0.5, 0.5))
normTail(p, sqrt(p * (1 - p) / n),
         L = X / n,
         U = 2 * p - X / n,
         col = COL[1],
         xlab = "Sample Proportions Under the Null Hypothesis")
dev.off()



