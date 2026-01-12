library(openintro)
data(COL)

myPDF("cherry_blossom_2_mean_diff.pdf", 5.2, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0, 3, -3, 3,axes = FALSE, col = COL[1], yaxs="i",ylim = c(0, 0.15),xaxt = "n")
axis(1, at = c(-6.38,-3.19,3.19,6.38))
axis(1, at = round(0))
axis(1, at = c(-3,3), labels=FALSE)
lines(c(-3, -3), c(0, 0.1), lty = 2)
lines(c(3, 3), c(0, 0.1), lty = 2)
text(c(-3.2, 3.2), c(0.1, 0.1), c(expression(bar(x)[1]- bar(x)[2] == -3), expression(bar(x)[1]- bar(x)[2] == 3)), pos = 3,cex=.8)
dev.off()

myPDF('cherry_blossom_2_mean_diffZ.pdf', 5.2, 1.7,
      mar = c(1.6, 0, 0, 0))
normTail(0, 1, L=-0.942,U=0.942,
         axes = FALSE,
         col = COL[1],yaxs="i",ylim = c(0, 0.448),xaxt = "n")
axis(1, at = round(c(-2,-1, 0, 1,2)))
axis(1, at = c(-0.942,0.942), labels=FALSE)
lines(c(-0.942, -0.942), c(0,.3), lty = 2)
lines(c(0.942, 0.942), c(0,.3), lty = 2)
abline(h=0, lwd=2)
text(-0.942-.15, .3, "Z = -0.942", pos = 3, cex=.8)
text(0.942+.15, .3, "Z = 0.942", pos = 3, cex=.8)
dev.off()