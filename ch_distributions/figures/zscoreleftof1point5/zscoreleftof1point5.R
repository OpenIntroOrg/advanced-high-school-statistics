library(openintro)
data(COL)

myPDF("zscoreleftof1point5.pdf", 4, 1.5,
      mar = c(1.6, 0, 0, 0))
normTail(0, 1, 1.5, col = COL[1],yaxs="i")
dev.off()
