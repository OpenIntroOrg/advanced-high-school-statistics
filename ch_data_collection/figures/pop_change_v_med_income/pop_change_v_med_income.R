library(openintro)
data(county)
data(COL)

ind <- 1088

myPDF("pop_change_v_med_income.pdf", 7, 3.5,
      mar = c(3, 5.1, 0.5, 1),
      mgp = c(2.4, 0.5, 0))
x <- county$median_hh_income
y <- county$pop_change
ylim <- c(-15, 29) # range(y, na.rm = TRUE)
plot(x, y,
     pch = 20,
     cex = 0.7,
     type = "n",
     xlim = c(0, max(x, na.rm = TRUE)+5000),
     ylim = ylim,
     xlab = "",
     ylab = "",
     xaxs="i",
     frame.plot = FALSE,
     axes = FALSE)
rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col = COL[5,9], border=NA)

AxisInDollars(1, pretty(c(0, x)))
AxisInPercent(2, pretty(ylim))

abline(h = pretty(ylim), v = pretty(c(0, x)), col = COL[7, 2])
points(x, y, pch = 20, cex = 0.7, col = COL[1, 3])
points(x, y, pch = ".")
mtext("Median Household Income", 1, 1.9)
par(las = 0)
mtext("Population Change\nover 7 Years", 2, 3)
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
