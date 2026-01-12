require(openintro)

x <- loans_full_schema$homeownership

myPDF('loan_homeownership_bar_plot.pdf',
      7,
      3,
      mar = c(3.6, 4.2, 1, 1.5),
      mgp = c(3.2, 0.55, 0),
      mfrow = 1:2)
t <- table(x)[3:5]
names(t) <- tolower(names(t))
barplot(t,
        axes = TRUE,
        xlab = '',
        ylab = 'Frequency',
        main = '',
        # ylim = c(0,2700),
        col = COL[c(2, 1, 4)])
abline(h = 0)
mtext("Homeownership", 1, 2.4)

par(mar = c(3.6, 4.7, 1, 1))
barplot(t / sum(t),
        axes = FALSE,
        xlab = '',
        ylab = '',
        main = '',
        # ylim = c(0, 2700) / sum(t),
        col = COL[c(2, 1, 4)])
# at <- seq(0, 0.6, 0.2)
axis(2)
# AxisInPercent(2, at = seq(0, 40, 10))
par(las = 0)
mtext('Proportion', side = 2, line = 2.7)
mtext("Homeownership", 1, 2.4)
abline(h = 0)
dev.off()

table(x)


myPDF('loan_homeownership_bar_plot_comparison.pdf',
      7,
      3,
      mar = c(3.6, 4.2, 3, 1.5),
      mgp = c(3.2, 0.55, 0),
      mfrow = 1:2)
a <- subset(loans_full_schema, application_type == "individual")$homeownership
b <- subset(loans_full_schema, application_type == "joint")$homeownership
t <- table(a)[3:5]
names(t) <- tolower(names(t))
u <- table(b)[3:5]
names(u) <- tolower(names(u))

barplot(t/sum(t),
        axes = FALSE,
        main = 'Individual loans',
         ylim = c(0,0.6),
 col = COL[c(2, 1, 4)])
abline(h = 0)
par(las = 0)
at <- seq(0, 0.6, 0.2)
axis(2, at = at, labels = c(0,0.2, 0.4, 0.6))
mtext("Homeownership", 1, 2.4)
mtext('Relative frequency', side = 2, line = 2.7)

par(mar = c(3.6, 4.7, 3, 1))
barplot(u/sum(u),
        axes = FALSE,
        main = 'Joint loans',
        ylim = c(0,0.6),
        col = COL[c(2, 1, 4)])
 at <- seq(0, 0.6, 0.2)
 axis(2, at = at, labels = c(0,0.2, 0.4, 0.6))
# AxisInPercent(2, at = seq(0, 40, 10))
par(las = 0)
mtext("Homeownership", 1, 2.4)
mtext('Relative frequency', side = 2, line = 2.7)

abline(h = 0)
dev.off()
