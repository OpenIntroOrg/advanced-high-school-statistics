library(openintro)
data(email50)
data(COL)
d <- email50$num_char
mean(d)
sd(d)


myPDF("sdAsRuleForEmailHist.pdf",1.1 * 5.5, 3.3,
      mar = c(3.5, 3.5, 0.15, 1),
      mgp = c(2.4, 0.7, 0))
histPlot(email50$num_char, breaks = 12,
        xlab = expression(
            paste("Number of Characters (in thousands), ",
                  bar(x), " = 11,600, ", s[x],
                  " = 13,130")),
         ylab = "Frequency", ylim = c(0, 23), col = COL[1],
         border = COL[5], xlim = c(0, 70))
axis(1, at = seq(5, 65, 10), labels = rep("", 7),
     tcl = -0.15)
d     <- 5 * (round(email50$num_char / 5 - 0.5) + 0.5)
steps <- seq(2.5, 67.5, length.out = 14)
ch    <- rep(0, length(steps))
for (i in 1:length(steps)) {
  ch[i] <- sum(d <= steps[i] + 1)
}
m <- round(mean(d), 1)
s <- round(sd(d), 1)
abline(v = m, col = COL[7])
rect(m - s, -5, m + s, 20,
     col = '#00000025', border = '#00000000')
rect(m + s, -5, m + 2 * s, 20,
     col = '#00000015', border = '#00000000')
rect(m - s, -5, m - 2 * s, 20,
     col = '#00000015', border = '#00000000')



dev.off()


myPDF("sdAsRuleForEmailNumChar.pdf", 6, 1.5,
      mar = c(3.5, 0, 0, 0), mgp = c(2.2, 0.7, 0))
dotPlot(d, col = COL[1, 2], pch = 20, cex = 2,
        xlim = range(d) + sd(d) / 2 * c(-1, 1),
        axes = FALSE,
        xlab = expression(
            paste("Number of Characters (in thousands), ",
                  bar(x), " = 11,600, ", s[x],
                  " = 13,130")),
        type='n')
m <- round(mean(d), 1)
s <- round(sd(d), 1)
abline(v = m, col = COL[7])
rect(m - s, -5, m + s, 5,
     col = '#0000001C', border = '#00000000')
rect(m + s, -5, m + 2 * s, 5,
     col = '#00000012', border = '#00000000')
rect(m - s, -5, m - 2 * s, 5,
     col = '#00000012', border = '#00000000')
rect(m + 2 * s, -5, m + 3 * s, 5,
     col = '#0000000A', border = '#00000000')
rect(m - 2 * s, -5, m - 3 * s, 5,
     col = '#0000000A', border = '#00000000')
dotPlot(d, col = COL[1, 2], pch = 20, cex = 2,
        add = TRUE, axes = FALSE)
dotPlot(d, col = 1, pch = ".", add = TRUE, axes = FALSE)
axis(1, at = m + s * (-3:7),
     labels = format(m + s * (-3:7)))


dev.off()

sum(d > m - s & d < m + s) / length(d)
sum(d > m - 2 * s & d < m + 2 * s) / length(d)
