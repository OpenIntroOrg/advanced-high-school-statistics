library(openintro)
data(COL)

# _____ Parameters (bp = box plot) _____ #
axis.lwd      <- 3
bp.lwd        <- 3
y.pos.of.bp   <- 7.5
bp.width      <- 4
bp.ends.width <- 0.07


d <- c(5, 8, 1, 19, 3, 1, 11, 18, 20, 5)
xlim <- c(-0.7, max(d) + 1.5)
ylim <- c(-10, 10)


myPDF("TI83_box_plot_A.pdf", 5, 3.5, mar = rep(0, 4))
plot(xlim, ylim, type = "n", xlab = "", ylab = "", axes = FALSE)
rect(-1000, -1000, 1000, 1000, col = COL[7, 2])

# _____ x-axis _____ #
lines(xlim, rep(0, 2), lwd = axis.lwd)
x <- seq(round(xlim[1] + 0.5), xlim[2])
n <- length(x)
segments(x, rep(0, n), x, rep(0.3, n), lwd = axis.lwd)

# _____ y-axis _____ #
lines(rep(0, 2), ylim, lwd = axis.lwd)
y <- seq(ylim[1], ylim[2])
n <- length(y)
segments(rep(0, n), y, rep(0.3, n), y, lwd = axis.lwd)

# _____ Box _____ #
fns <- c(min(d), quantile(d, 0.25) - 0.5, median(d),
         quantile(d, 0.75) + 1.75, max(d))
rect(fns[2], y.pos.of.bp - bp.width / 2,
     fns[4], y.pos.of.bp + bp.width / 2,
     lwd = bp.lwd)
lines(rep(fns[3], 2), y.pos.of.bp + c(-1, 1) * bp.width / 2,
      lwd = bp.lwd)

# _____ Whiskers _____ #
arrows(fns[2], y.pos.of.bp,
       fns[1], y.pos.of.bp,
       lwd = bp.lwd, length = bp.ends.width, angle = 90)
arrows(fns[4], y.pos.of.bp,
       fns[5], y.pos.of.bp,
       lwd = bp.lwd, length = bp.ends.width, angle = 90)

dev.off()













