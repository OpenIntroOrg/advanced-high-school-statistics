library(openintro)
data(COL)

myPDF("oPositive4.pdf", 7, 3)
# Intentially not exact
x <- 0:4
y <- dbinom(x, 4, 0.35)
plot(x, y, type = "n",
     xlim = c(-0.5, 4.5),
     ylim=c(-.001,.45),
     xlab = "",
     ylab = "Probability",
     axes = TRUE,
     yaxs="i",
     frame.plot=FALSE
     )
a <- 0.5
for (i in 1:length(x)) {
  rect(x[i] - a, 0, x[i] + a, y[i],
       border = COL[5],
       col = COL[1], lwd = .5)
}
abline(h=0)
mtext(paste("Number With Blood Type O+",
            "in a Random Sample of Size 4"),
      1, 2.1)
dev.off()
