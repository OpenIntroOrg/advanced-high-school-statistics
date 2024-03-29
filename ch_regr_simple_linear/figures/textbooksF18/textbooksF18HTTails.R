library(openintro)
data(textbooks)
data(COL)
d <- as.numeric(na.omit(ucla_textbooks_f18$bookstore_new -
    ucla_textbooks_f18$amazon_new))
(m <- mean(d))
(s <- sd(d))
(se <- s / sqrt(length(d)))
(z <- m / se)

myPDF('textbooksF18HTTails.pdf', 5, 1.6,
      mar = c(1.7, 0, 0, 0),
      mgp = c(3, 0.5, 0))
normTail(L = -abs(m),
         U = abs(m),
         s = se,
         df = 20,
         # xlim = 5 * c(-1, 1),
         col = COL[1],
         # border = COL[4],
         yaxs="i",
         axes = FALSE, ylim=c(0,0.26))
at <- c(-100, 0, m, 100)
labels <- expression(0, mu[0]*' = 0', bar(x)[diff]*" = 2.98", 0)
axis(1, at, labels, cex.axis = 0.9)
dev.off()
