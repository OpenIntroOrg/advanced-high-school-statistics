library(openintro)
data(COL)

myPDF('tDistConvergeToNormalDist.pdf', 5.54, 2.33,
      mar = c(2, 1, 0.1, 1),
      mgp = c(5, 0.6, 0))
plot(c(-4.5, 4.5),
     c(0, dnorm(0)),
     type = 'n',
     yaxs="i",
     axes = FALSE,ylim=c(0,0.41))
at <- seq(-6, 6, 2)
axis(1, at)
axis(1, at, rep("", length(at)), tcl = -0.1)
abline(h = 0)

COL. <- fadeColor(COL[1], c("FF", "89", "68", "4C", "33"))
COLt <- fadeColor(COL[1], c("FF", "AA", "85", "60", "45"))
DF   <- c('normal', 8, 4, 2, 1)

X <- seq(-5, 5, 0.02)
Y <- dnorm(X)
lines(X, Y, col = COL.[1])

for (i in 2:5) {
  Y <- dt(X, as.numeric(DF[i]))
  lines(X, Y, col = COL.[i])
}

legend(2.5, 0.4,
       legend = c(DF[1],
       paste('t, df = ', DF[2:5], sep = '')),
       col = COL.,
       text.col = COLt,
       lty = rep(1, 5))

dev.off()
