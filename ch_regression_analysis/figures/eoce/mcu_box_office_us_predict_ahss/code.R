library(openintro)
library(xtable)

myPDF("mcu_box_office_us_predict.pdf", 4.5, 3.7,
  mar = c(3.2, 4.4, 0.2, 0.1),
  mgp = c(2.1, 0.55, 0))
m <- lm(gross_us ~ opening_weekend_us, data = mcu_films)
summary(m)
xtable(m)
plot(
  mcu_films$opening_weekend_us, mcu_films$gross_us,
  col = COL[1, 2], pch = 19, cex = 1.2,
  xlim = c(0, 1.1*max(mcu_films$opening_weekend_us)),
  ylim = c(0, 1.1*max(mcu_films$gross_us)),
  xlab = "US Opening Weekend Sales",
  ylab = "",
  axes = FALSE,
  xaxs = "i", yaxs = "i"
)
AxisInDollars(1, pretty(c(0, mcu_films$opening_weekend_us)))
AxisInDollars(2, pretty(c(0, mcu_films$gross_us)))
abline(h = 0, v = 0)
par(las = 0)
mtext("US Theater Sales", 2, line = 3.4)
dev.off()
