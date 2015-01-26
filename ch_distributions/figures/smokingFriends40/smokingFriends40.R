library(openintro)
data(COL)

myPDF("smokingFriends40.pdf", 7, 3,
      mar = c(1.6, 0, 0, 0))
# Intentially not exact
normTail(12, 2.9, -10, col = COL[1], axes = FALSE)
rect(-1000, -1000, 1000, 1000, col = "white")
x <- 0:40
y <- dbinom(x, 40, 0.3)
a <- 0.5
for (i in 1:length(x)) {
  rect(x[i] - a, 0, x[i] + a, y[i],
       border = COL[5],
       col = COL[1], lwd = 0.5)
}
abline(h = 0)
axis(1, seq(0, 25, 5))
dev.off()
