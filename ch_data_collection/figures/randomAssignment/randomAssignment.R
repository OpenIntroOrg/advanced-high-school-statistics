library(openintro)
data(COL)
set.seed(2)
xlim     <- c(0, 1)
slimBox3 <- 0.03

myPDF("randomAssignment.pdf", 5, 4, mar=rep(0, 4))
plot(c(1, 2), c(1.2, 3), type = "n", axes = FALSE,
     xlab = "", ylab = "", xlim = c(-0.1, 1.1))
rect(0, 2.2, 1, 2.9)
text(0.5, 2.885, "Numbered patients", pos = 3, cex = 0.9)
rect(0, 1.2, 0.45, 1.9)
rect(0.55, 1.2, 1, 1.9)
arrows(0.56, 2.17, 0.75, 2.02, length = 0.1, lwd = 1.37)
arrows(0.44, 2.17, 0.25, 2.02, length = 0.1, lwd = 1.37)
text(0.5, 2.07, "create\nblocks", cex = 0.8)
text(0.2, 1.89, "Low-risk patients", pos = 3, cex = 0.7)
text(0.2 + 0.55, 1.89, "High-risk patients", pos = 3, cex = 0.7)

n   <- 6*9
pch <- c(1, 20)[sample(2, n, TRUE, c(0.8, 1.2))]
cex <- rnorm(n, 1, 0.001)
k   <- 0
for(x in seq(0.1, 0.9, len = 9)){
	for(y in rev(seq(0.3, 0.8, len = 6))){
		k <- k + 1
		points(x, y + 2, pch = pch[k], cex = cex[k],
		       col = COL[1 + 3 * (pch[k] == 1)])
		text(x, y + 1.98, k, cex = 0.45, pos = 3,
		     col = COL[1 + 3 * (pch[k] == 1)])
	}
}

trmt  <- rep(NA, n)

these <- which(pch == 1)
trmt[sample(these, length(these) / 2)] <- "ctrl"
trmt[is.na(trmt) & pch == 1] <- "trmt"
k <- 0
x <- 0.078
y <- 1.83
for(i in these){
	k <- k+1
	points(x, y, pch = pch[i], cex = cex[i], col = COL[4])
	text(x, y - 0.02, i, cex = 0.45, pos = 3, col = COL[4])
	if(y < 1.3){
		x <- x + 0.095
		y <- 1.83
	} else {
		y <- y - 0.11
	}
}
these <- which(pch != 1)
trmt[sample(these, length(these) / 2)] <- "ctrl"
trmt[is.na(trmt) & pch != 1] <- "trmt"
k <- 0
x <- 0.615
y <- 1.82
for(i in these){
	k <- k+1
	points(x, y, pch = pch[i], cex = cex[i], col = COL[1])
	text(x, y - 0.02, i, cex = 0.45, pos = 3, col = COL[1])
	if(y < 1.3){
		x <- x + 0.08
		y <- 1.83
	} else {
		y <- y - 0.095
	}
}


dev.off()