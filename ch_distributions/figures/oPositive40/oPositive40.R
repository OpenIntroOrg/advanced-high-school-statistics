library(openintro)
data(COL)

myPDF("oPositive40.pdf", 7, 3,
      mar = c(3.2, 2.8, .5, 0))
# Intentially not exact
normTail(14, 3.0, -10, col = COL[1], axes = FALSE, yaxs="i")
rect(-1000, -1000, 1000, 1000, col = "white")
x <- 0:40
y <- dbinom(x, 40, 0.35)

a <- 0.5
for (i in 5:length(x)) {
  rect(x[i] - a, 0, x[i] + a, y[i],
       border = COL[5],
       col = COL[1], lwd = .5)
}
mtext(paste("Number With Blood Type O+",
            "in a Random Sample of Size 40"),
      1, 2.1)
mtext(paste("Probability"),las=0,
      2, 1.8)

axis(1, seq(6, 22, 4))
axis(2, seq(0, .15, .05),pos=3)
dev.off()
