library("openintro")

myPDF("swing_voters.pdf", 4, 3, mar = rep(0.5, 4))

deg <- seq(0, 2 * pi, length.out = 1000)

plot(c(0, 0.9), c(0, 0.68), axes = FALSE, type = "n")
box()

x <- 0.3 + 0.3 * cos(deg)
y <- 0.3 + 0.3 * sin(deg)
polygon(x, y, col = COL[1, 4], border = "#00000000")

x <- 0.58 + 0.22 * cos(deg)
y <- 0.3 + 0.22 * sin(deg)
polygon(x, y, col = COL[2, 4], border = "#00000000")
text(c(0.2, 0.48, 0.72), rep(0.3, 3), c(24, 11, 12))

text(0.35, 0.6, "Independent", pos = 3)
text(0.85, 0.2, "Swing")
dev.off()
