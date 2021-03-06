library(openintro)
data(COL)

pdf('indepForRollingTwo1s.pdf', 4.5, 2.2)
par(mar = rep(0, 4))
plot(0:1, c(0, 1.1), type = 'n', axes = FALSE)
x <- cos(seq(0, 2 * pi, length.out = 99))
y <- sin(seq(0, 2 * pi, length.out = 99))
#lines(x / 2 + 0.5, y / 2 + 0.5)
text(0, 1.05, pos = 4, 'All rolls')
rect(0, 0, 1, 1)
rect(1/6, 0, 2/6, 1,
     lty = 2,
     border = COL[1],
     col = COL[1,3])
text(2/6, 0.7,
     '1/6th of the first\nrolls are a 1.',
     pos = 4,
     col = COL[1])
rect(1/6, 1/6, 2/6, 2/6,
     lty = 3,
     border = "#00000000",
     col = COL[2])
the.text <- paste("1/6th of those times where",
                  "the first roll is a 1 the",
                  "second roll is also a 1.",
                  sep  =  "\n")
text(2 / 6, 3 / 12 - 0.02,
    the.text,
    pos = 4,
    col = COL[2])
dev.off()
