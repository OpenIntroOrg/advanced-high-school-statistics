rm(list=ls())
library(openintro)

d <- midterms_house

summary(lm(house_change ~ unemp, d))
th <- !d$year %in% c(1935, 1939)

g <- lm(house_change ~ unemp, d[th,])
summary(g)

myPDF("unemploymentAndChangeInHouseResiduals.pdf", 7.2, 4.2,
      mar = c(3.2, 5.3, 0.5, 0.5),
      mgp = c(3.2, 0.55, 0))
th <- !d$year %in% c(1935, 1939)
plot(d$unemp[th], g$residuals,
     # col = COL[ifelse(d$party[th] == "Republican", 4, 1)],
     pch = 19,
     xlim = c(3, 12),
     axes = FALSE,
     type = 'n',
     xlab = '',
     ylab = paste0("Residuals"))
mtext('Percent Unemployment', 1, 2)
abline(h = seq(-100, 100, 10), col = COL[7, 3], lwd = 2)
abline(h = seq(-105, 100, 10), col = COL[7, 3], lwd = 0.7)
abline(v = seq(-100, 100, 4), col = COL[7, 3], lwd = 2)
abline(v = seq(-102, 100, 4), col = COL[7, 3], lwd = 0.7)
repub <- (d$party[th] == "Republican")
points(d$unemp[th], g$residuals,
       col = COL[ifelse(repub, 4, 1)],
       pch = ifelse(repub, 17, 19))
rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col = COL[5,9], border=NA)

AxisInPercent(1, at = seq(0, 20, 4))
AxisInPercent(2, at = seq(-100, 100, 10))
cases <- c(1, 22, 25, 27, 29, 31)
legend('topright',
       bg = "#FFFFFF",
       pch = c(19, 17),
       col = COL[c(1, 4)],
       legend = c("Democrat", "Republican"))

abline(h=0, lty=2)

dev.off()

# library(xtable)
# xtable(g)
# acf(g$residual)