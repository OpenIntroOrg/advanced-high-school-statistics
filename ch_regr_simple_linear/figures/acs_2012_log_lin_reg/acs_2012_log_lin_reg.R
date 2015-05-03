library(openintro)
data(COL)
data(acs12)
d <- subset(acs12, 30 <= age & age <= 60)
d <- subset(d, employment == "employed" & income > 0)
d <- na.omit(d[c("age", "income")])


myPDF("acs2012LinReg.pdf", 7, 4,
      mar = c(3.4, 4.9, 1, 1), mgp = c(2.2, 0.6, 0))
plot(d$age, d$income,
     xlab = "Age",
     ylab = "",
     pch = 19,
     col = COL[1,2],
     axes = FALSE)
axis(1)
at <- pretty(d$income)
axis(2, at, labels = paste0("$", at / 1e3, "k"))
m <- lm(income ~ age, data = d)
abline(m)
summary(m)
par(las = 0)
mtext("Annual Income, in US Dollars", 2, line = 3.7)
dev.off()


myPDF("acs2012LinRegWRes.pdf", 7, 5,
      mar = c(0.5, 5, 0.5, 0.5),
      mgp = c(3.8, 0.6, 0))
myMat <- rbind(matrix(1:2, 2))
layout(myMat, 1, c(3, 1.7))
lmPlot(d$age, d$income,
     xlab = "",
     ylab = "Annual Income",
     col = COL[1, 3],
     parCustom = TRUE,
     marRes = c(3.2, 5, 0.5, 0.5),
     yR = 0.02)
mtext("Age", 1, 2)
axis(1)
dev.off()




myPDF("acs2012LogLinReg.pdf", 7, 4,
      mar = c(3.4, 4.9, 1, 1), mgp = c(2.2, 0.6, 0))
plot(d$age, log(d$income),
     xlab = "Age",
     ylab = "",
     pch = 19,
     col = COL[1,2],
     axes = FALSE)
axis(1)
at <- pretty(d$income)
axis(2, at, labels = paste0("$", at / 1e3, "k"))
m <- lm(log(income) ~ age, data = d)
abline(m)
summary(m)
par(las = 0)
mtext("ln(Annual Income)", 2, line = 3.7)
dev.off()

myPDF("acs2012LogLinRegWRes.pdf", 7, 5,
      mar = c(0.5, 5, 0.5, 0.5),
      mgp = c(2.8, 0.6, 0))
myMat <- rbind(matrix(1:2, 2))
layout(myMat, 1, c(3, 1.7))
lmPlot(d$age, log(d$income),
     xlab = "",
     ylab = "ln(Annual Income)",
     col = COL[1, 3],
     parCustom = TRUE,
     marRes = c(3.2, 5, 0.5, 0.5),
     yR = 0.02)
mtext("Age", 1, 2)
axis(1)
dev.off()

