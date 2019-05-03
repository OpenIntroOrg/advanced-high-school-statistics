library(openintro)
data(COL)
data(elmhurst)
d <- elmhurst

g <- lm(d$gift_aid ~ d$family_income)
summary(g)
pos<-c(-10,0,10)
lab<-c("-10","0","-10")
myPDF('elmhurstResidual.pdf', 5.5, 3.3,
      mar = c(3.1, 3.6, 1, 1),
      mgp = c(2, 0.6, 0))

plot(d$family_income, g$residuals,
     col = COL[1, 2],
     pch = 19,
     xlab = 'Family Income ($1000s)',
     ylab = '',
     axes = FALSE,
     xlim = c(0, 280), 
     ylim =  c(-11.5,11.5)
     )
rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col = COL[5,9], border=NA)

axis(1, at = (-1:6) * 50)
axis(2, seq(-12,12,4))
par(las = 0)
mtext("Residuals", 2, line = 2.5)
abline(h=0, lty = 2)
dev.off()
