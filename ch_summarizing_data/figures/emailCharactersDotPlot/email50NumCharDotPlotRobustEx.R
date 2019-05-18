library(openintro)
data(email50)
data(COL)
source("dotPlotStack.R")

cex  <- 1
text.cex <- 1.6
cex.lab  <- 1.3
upshifts <- c(0, 8, 16, 23)


p1 <- email50$num_char
p2 <- p1[-which.max(p1)]
p3 <- p1
p3[which.max(p1)] <- 150

myPDF("email50NumCharDotPlotRobustEx.pdf", 15, 3,
      mar = c(2.6, 0.1, 0.3, 0),
      mgp = c(1.45, 0.25, 0),
      cex.lab = cex.lab)


tmp  <- table(round(p1) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x))) + upshifts[3]
xlim <- c(-25, 151)
plot(x, y,
     xlab = paste0(paste(rep(" ", 30), collapse = ""),
                   "Number of Characters (in thousands)"),
     axes = FALSE, ylab = "", xlim = xlim,
     ylim = c(0, max(upshifts)),
     col = COL[1], cex = cex, pch = 19)
lines(c(-10, xlim[2]), rep(upshifts[3], 2), col = COL[5,3])
axis(1, at = seq(0,150,50),pos=0)
text(-2, upshifts[3] + 4, 'Original', pos = 2, cex = text.cex)

tmp  <- table(round(p2) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x))) + upshifts[2]
points(x, y, col = COL[1], cex = cex, pch = 19)
lines(c(-10, xlim[2]), rep(upshifts[2], 2), col = COL[5,3])
text(-2, upshifts[2] + 4, 'Drop 64,401', pos = 2, cex = text.cex)

tmp  <- table(round(p3) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
points(x, y, col = COL[1], cex = cex, pch = 19)
lines(c(-10, xlim[2]), rep(upshifts[1], 2) + 0, col = COL[5,3])
text(-2, upshifts[1] + 4, '64,401 to 150,000', pos = 2, cex = text.cex)
dev.off()


(temp <- round(quantile(p1, c(0.25, 0.5, 0.75)), 3))
temp[3] - temp[1]; mean(p1); sd(p1)
(temp <- round(quantile(p2, c(0.25, 0.5, 0.75)), 3))
temp[3] - temp[1]; mean(p2); sd(p2)
(temp <- round(quantile(p3, c(0.25, 0.5, 0.75)), 3))
temp[3] - temp[1]; mean(p3); sd(p3)

