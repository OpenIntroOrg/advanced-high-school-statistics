library(openintro)

d = read.csv("apstats.csv")

# AP stats scores
d_ap = d[d$ap_stats == "yes",]
cat(sort(d_ap$pretest), sep = ", ")

# no AP stats scores
d_no_ap = d[d$ap_stats == "no",]
cat(sort(d_no_ap$pretest), sep = ", ")

# rel freq for all
myPDF("apstats_relfreq.pdf", 5, 3.3, mgp=c(2.4, 0.7, 0))
par(mar=c(3.6, 3, 1, 0.5), cex.lab = 1.25, cex.axis = 1.25)
histPlot(d$pretest, col = COL[1], xlab = "Score", yaxs="i",axes = FALSE, ylab = "", ylim = c(0,7))
axis(1)
axis(2, at = c(0:7), labels = c(0:7)/20, las = 1)
dev.off()



# box and hollow
myPDF("apstats_box_hollow.pdf", 5*2, 3.3, mar=c(3.6, 2, 1, 0.5), mgp=c(2.4, 0.7, 0))
par(mfrow = c(1,2), cex.lab = 1.25, cex.axis = 1.25)
# hollows
histPlot(d$pretest[d$ap_stats == "yes"], border = COL[1],yaxs="i", hollow = TRUE, xlab = "Score", ylab = "", lwd = 3, lty = 2, axes = FALSE, ylim = c(0,3), xlim = c(40,85))
axis(1)
axis(2, at = c(0:3), las = 1)
histPlot(d$pretest[d$ap_stats == "no"], border = COL[4], hollow = TRUE, xlab = "Income", add = TRUE, lty=3, lwd=4)
legend("topright", c("AP Stats: yes", "AP Stats: no"), lty = c(2,3), col = c(COL[1],COL[4]), lwd = c(3,4), cex = 1.1)
# side-by-sides
boxPlot(d$pretest, d$ap_stats, xlab='AP Stats', ylab='Score', lcol="#00000000", col="#00000000")
boxPlot(d$pretest[d$ap_stats == "no"], lcol=COL[4], col=COL[4], add=1)
boxPlot(d$pretest[d$ap_stats == "yes"], lcol=COL[1], col=COL[1], add=2)
dev.off()
