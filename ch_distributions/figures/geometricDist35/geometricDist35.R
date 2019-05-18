library(openintro)
data(COL)

p <- 0.35
x <- 1:100
y <- (1 - p)^(x - 1) * p
myPDF('geometricDist35.pdf', 5.5, 3.2,
      mar = c(2.6, 4.3, 1, 1),
      mgp = c(2.25, 0.34, 0))
plot(x, y,
     xlim = c(0.5, 14.5),
     type = 'n',
     axes = FALSE,
     xlab = '',
     yaxs="i",
     ylab = 'Probability')
mtext('Number of trials', line = 1.5, side = 1)
axis(1, at = seq(1, 14, 1), cex.axis = 0.8)
par(mgp = c(2.25, 0.5, 0))
axis(2, seq(0, 0.4, 0.1), cex.axis = 0.8)
for (i in 1:14) {
  rect(x[i] - 0.5, 0,
       x[i] + 0.5, y[i],
       col = COL[1])
}
abline(h = 0)
text(14.7, 0.003, '...', col = '#444444')
dev.off()
