library(openintro)
data(COL)
data(stem.cells)
d <- stem.cells

change <- d$after - d$before
t.test(change ~ d[, 1])

myPDF('stemCellTherapyForHearts.pdf', 8, 2.7,
      mar = c(3.1, 1.8, 3, 2),
      mgp = c(2, 0.45, 0),
      mfrow = c(1, 2))
histPlot(change[d[, 1] == 'esc'],
         breaks = seq(-10, 15, 2.5),
         xlim = c(-10, 15),
         axes = FALSE,
         xlab = '',
         main = '',
         col = COL[1])
axis(1, cex.axis = 0.85)
mtext('Embryonic stem cell transplant',
      line = 1.5,
      cex = 1.25)
mtext('Percent change in heart pumping function', 1,
      line = 1.5,
      cex = 0.9)
par(mgp = c(2, 0.6, 0))
axis(2, at = 0:3, cex.axis = 0.925)

par(mar = c(3.1, 1.8, 3, 0.5))
histPlot(change[d[, 1] == 'ctrl'],
         breaks = seq(-10, 15, 2.5),
         xlim = c(-10, 15),
         axes = FALSE,
         xlab = '',
         main = '',
         col = COL[1])
axis(1, cex.axis = 0.85)
par(mgp = c(2, 0.6, 0))
axis(2, at = 0:3, cex.axis = 0.925)
mtext('Control (no treatment)',
      line = 1.5,
      cex = 1.25)
mtext('Percent change in heart pumping function', 1,
      line = 1.5,
      cex = 0.9)
dev.off()
