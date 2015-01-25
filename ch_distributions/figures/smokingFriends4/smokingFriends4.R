library(openintro)
data(COL)


myPDF("smokingFriends4.pdf", 7, 3)
# Intentially not exact
x <- 0:4
y <- dbinom(x, 4, 0.3)
plot(x, y, type = "n",
     xlim = c(-0.5, 4.5),
     xlab = "",
     ylab = "Probability",
     axes = FALSE
     )
a <- .5
for (i in 1:length(x)) {
  rect(x[i] - a, 0, x[i] + a, y[i],
       border = COL[5],
       col = COL[1], lwd = .5)
}
mtext("Number of Smoking Friends who Develop a Severe Lung Condition",
      1, 2.1)
abline(h = 0)
axis(1)
axis(2)
dev.off()





