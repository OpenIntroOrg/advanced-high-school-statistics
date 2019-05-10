library(openintro)
data(COL)

k <- 0:400
p <- 0.2
n <- 400

myPDF('normApproxToBinomFail.pdf', 7.5, 2.6,
      mar = c(1.9, 1, 0.3, 1),
      mgp = c(2.2, 0.6, 0),
      tcl = -0.35)

X <- seq(40, 120, 0.01)
Y <- dnorm(X, 80, 8)
plot(X, Y,
     type = "l",
     xlim = c(60, 100),
     ylim = c(0, 1.02 * max(Y)),
     axes = FALSE,
     xlab = "",
     ylab = "",
     yaxs="i")
polygon(c(69, 69, 71, 71),
        dnorm(c(-1000, 69, 71, -1000), 80, 8),
        col = COL[1])
polygon(rep(c(67.9, 69, 70, 71.1), rep(2, 4)) + 0.5,
        dbinom(c(-1000, 69, 69, 70, 70, 71, 71, -1000), 400, .2),
        border = COL[4],
        lwd = 2)
axis(1)
axis(1,
     1:200,
     rep("", 200),
     tcl = -0.12)
abline(h = 0)

dev.off()



k <- 0:400
p <- 0.35
n <- 400
m <- n * p
s <- sqrt(n * p * (1 - p))
adj <- 60

myPDF('normApproxToBinomFail-n400-p35.pdf', 7.5, 2.6,
      mar = c(1.9, 1, 0.3, 1),
      mgp = c(2.2, 0.6, 0),
      tcl = -0.35)

X <- seq(0, 400, 0.01)
Y <- dnorm(X, m, s)
plot(X, Y,
     type = "l",
     xlim = m + c(-3, 3) * s,
     ylim = c(0, 1.02 * max(Y)),
     axes = FALSE,
     xlab = "",
     ylab = "",
     yaxs="i")
polygon(c(69, 69, 71, 71) + adj,
        dnorm(c(-1000, 69, 71, -1000) + adj, m, s),
        col = COL[1])
polygon(rep(c(67.9, 69, 70, 71.1), rep(2, 4)) + 0.5 + adj,
        dbinom(c(-1000, 69, 69, 70, 70, 71, 71, -1000) + adj, n, p),
        border = COL[4],
        lwd = 2)
axis(1,seq(120,160,10))
axis(1,
     -10:410,
     rep("", 421),
     tcl = -0.12)
abline(h = 0)

dev.off()
