library(openintro)
data(COL)
set.seed(1)
n <- 35
x <- runif(n, 15, 62)
y <- exp(1.82 + 0.05 * x + rnorm(25, sd = 0.15))


myPDF("NeedsTransform-PreTransform.pdf", 6, 4,
      mar = c(0.1, 5, 0.3, 0.5),
      mgp = c(3.8, 0.6, 0))
myMat <- rbind(matrix(1:2, 2))
layout(myMat, 1, c(3, 2.5))
lmPlot(x, y,
     xlab = "",
     ylab = "y",
     col = COL[1, 3],
     parCustom = TRUE,
     marRes = c(3, 5, 0.2, 0.5),
     yR = 0.02,
     wLine = FALSE)
# mtext("x", 3, 1)
mtext("x", 1, 1.9)
par(las = 0)
mtext("Residuals", 2, 3.8)
axis(1)
dev.off()
m <- lm(y ~ x)
summary(m)


myPDF("NeedsTransform-PostTransform.pdf", 6, 4,
      mar = c(0.1, 5, 0.3, 0.5),
      mgp = c(2.8, 0.6, 0))
myMat <- rbind(matrix(1:2, 2))
layout(myMat, 1, c(3, 2.5))
lmPlot(x, log(y),
     xlab = "",
     ylab = "log(y)",
     col = COL[1, 3],
     parCustom = TRUE,
     marRes = c(3, 5, 0.2, 0.5),
     yR = 0.02,
     wLine = FALSE)
# mtext("x", 3, 1)
mtext("x", 1, 1.9)
par(las = 0)
mtext("Residuals", 2, 2.8)
axis(1)
dev.off()
mL <- lm(log(y) ~ x)
summary(mL)


