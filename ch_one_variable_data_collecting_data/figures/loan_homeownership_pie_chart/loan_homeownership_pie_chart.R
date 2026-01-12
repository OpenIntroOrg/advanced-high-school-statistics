library(openintro)
data(email)
data(COL)

tab <- loans_full_schema$homeownership
t <- table(tab)[3:5]

myPDF("loan_homeownership_pie_chart.pdf",
      7.5,
      4,
      mar = c(0, 2, 0, 0.5),
      mgp = c(2.4, 0.5, 0))
#layout(matrix(1:2, 1), c(1, 1.1))

pie(t, col = COL[c(2, 1, 4)], radius = 0.75)

# par(mar = c(3.6, 5.2, 1, 1))
# barplot(tab,
#         axes = FALSE,
#         xlab = 'Homeownership',
#         ylab = '',
#         main = '',
#         col = COL[c(2, 1, 4)])
# axis(2) #, at = seq(0, 4000, 1000), labels = c(0, paste0(1:4, "k")))
# abline(h = 0)
# par(las = 0)
# mtext("Frequency", 2, line = 2.9)
dev.off()
