library(openintro)
library(splines)

ind <- 1456

county23 = read.csv("https://www.dropbox.com/scl/fi/26nlqmfwuizg4vx9c2p7g/ACS2023wide_final.csv?rlkey=yt7l9xt0dulny0ho7i6lsxyq6&st=sm621q4x&dl=1")
myPDF("medianHHIncomeBachelors.pdf", 6, 3.5,
      mar = c(3, 4.7, 0.5, 1),
      mgp = c(2.4, 0.5, 0))
x <- county23$MEDIAN.HOUSEHOLD.INCOME..2018.dollars.
y <- county23$EDUCATION...Bachelor.s.degree.or.higher..percent.among.those.25.and.older.
plot(x, y, type = "n",
     xlim = c(0, max(x, na.rm = TRUE)),
     ylim = c(0, max(y, na.rm = TRUE)),
     xlab = "",
     ylab = "",
     axes = FALSE)
abline(h = pretty(c(0, y)), v = pretty(c(0, x)), col = COL[7, 3])
points(x, y, pch = 20, cex = 0.7, col = COL[1, 3])
AxisInDollars(1, pretty(c(0, x)))
AxisInPercent(2, pretty(c(0, y)))
box()
points(x, y, pch = ".", col = COL[5, 4])
mtext("Median Household Income", 1, 1.9)
par(las = 0)
mtext("Bachelor's Degree (Percent)", 2, 3.5)

t1 <- x[ind]
t2 <- y[ind]
lines(c(t1, t1), c(-1e5, t2),
      lty = 2,
      col = COL[4])
lines(c(-1e5, t1), c(t2, t2),
      lty = 2,
      col = COL[4])
points(t1, t2,
       col = COL[4])
dev.off()

county[ind, ]
