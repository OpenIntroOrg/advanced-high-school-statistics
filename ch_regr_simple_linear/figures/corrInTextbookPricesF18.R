library(openintro)
data(textbooks)
data(COL)


myPDF('corrInTextbookPricesF18.pdf', 6.9, 4.6,
      mar = c(3.7, 3.7, 0.5, 0.5),
      mgp = c(2.6, 0.55, 0))
plot(textbooks$bookstore_new, textbooks$amazon_new,  pch = 19,
     col = COL[1, 2],
     cex = 1.2,
     xlab = 'cost of textbook at UCLA bookstore ($)',
     ylab = 'cost of textbook on Amazon ($)',
     xlim=c(0,200),
     ylim=c(0,200))

dev.off()

