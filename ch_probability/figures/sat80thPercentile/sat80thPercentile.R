library(openintro)
data(COL)


myPDF("sat80thPercentile.pdf",  3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
# Intentially not exact
normTail(1100, 200, 1268.32,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.0025),xaxt = "n")
axis(1, at = c(700, 1100, 1500))
axis(1, at = 1268.32, labels=FALSE)
lines(c(1268.32, 1268.32), c(0,.0021), lty = 2)
abline(h=0, lwd=2)
text(1050, .001, "80%", pos = 1, cex=1.2)
text(1268.32, .00195, "x = ?", pos = 3, cex=.7)
dev.off()

myPDF("sat80thPercentileZ.pdf", 3, 1.4,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(0, 1, 0.8416,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.5),xaxt = "n")
axis(1, at = round(c(-2, 0, 2)))
axis(1, at = 0.8416, labels=FALSE)
lines(c(0.8416, 0.8416), c(0,.43), lty = 2)
abline(h=0, lwd=2)
text(-0.25, .2, "80%", pos = 1, cex=1.2)
text(0.8416, .4, "Z = ?", pos = 3, cex=.7)
dev.off()


myPDF("sat20thPercentile.pdf", 4, 1.5,
      mar = c(1.6, 0, .2, 0))
# Intentially not exact
normTail(1100, 200, 932, col = COL[1],yaxs="i",ylim = c(0, 0.0021))
#axis(1, at =932, labels=FALSE)
lines(c(932, 932), c(0,.002), lty = 2)
abline(h=0, lwd=2)
text(850, .0006, "20%", pos = 1, cex=1.2)
text(932, .0017, "x = ?", pos = 3, cex=.7)
dev.off()