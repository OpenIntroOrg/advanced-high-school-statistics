rm(list = ls())
library(openintro)

X <- seq(0, 6, len = 300)
Y <- df(X, 3, 323)

myPDF("fDist3And323.pdf", 4.3, 2.2,
      mar = c(2.8, 0.5, 0.5, 0.5),
      mgp = c(1.8, 0.4, 0))
plot(X, Y,
     type = "l",
     xlab = "F",
     ylab = "",
     yaxs="i",
     axes = FALSE,
     lwd = 1.5)
abline(h = 0)
axis(1)
dev.off()


myPDF("fDist3And323Shaded.pdf", 5, 1.8,
      mar = c(1.6, 3.1, 0.5, 0.5),
      mgp = c(2, 0.5, 0))
plot(X, Y,
     type = "l",
     xlab = "F",
     ylab = "",
     yaxs="i",
     axes = FALSE)
abline(h = 0)
axis(1)
temp <- which(X > 1.994)
x    <- X[c(temp, rev(temp), temp[1])]
y    <- c(Y[temp], rep(0, length(temp)), Y[temp[1]])
polygon(x, y, col = COL[1])
dev.off()
