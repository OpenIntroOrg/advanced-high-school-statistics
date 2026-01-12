library(openintro)
data(COL)

#===> plot <===#
myPDF("satBelow1300.pdf", 2.25, 1,
      mar = c(1.2, 0, 0, 0),
      mgp = c(3, 0.17, 0))
normTail(0, 1,
         L = 1,
         col = COL[1],
         cex.axis = 0.6,yaxs="i",ylim=c(0,.41))
dev.off()
