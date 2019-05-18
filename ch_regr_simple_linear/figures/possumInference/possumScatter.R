require(openintro)
data(COL)
data(possum)
set.seed(1)

myPDF('possumScatter.pdf', 6, 4,
      mar = c(3.4, 3.4, 0.5, 1),
      mgp = c(2.3, 0.5, 0))
these <- c(48, 42, 3)
plot(possum$total_l[-these], possum$head_l[-these],
     pch = 20,
     col = COL[1, 2],
     cex = 1.7,
     xlab = 'Total length (cm)',
     ylab = 'Head length (mm)',
     frame.plot = FALSE,
     axes=FALSE)
rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col = COL[5,9], border=NA)
axis(1,seq(70,100,5))
axis(2,seq(80,110,5))
abline(41, 0.59, col = COL[5])
dev.off()
