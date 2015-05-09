library(xtable)
library(stringr)
library(openintro)
library(BHH2)

d = read.csv("cereal_nutrition_info.csv")

# drop almost empty row
d = d[-which(d$target == ""),]

# create name
d$variety = str_replace(d$variety, "\\(Regular\\)", "")
d$name = paste(d$brand, d$variety)

# dataset for cereals targeted to children
child = droplevels(d[d$target == "Child",])

# random sample of n = 20 of cereals targeted to children
set.seed(123)
child_20 = child[sample(1:nrow(child), 20),]

###########
## fiber ##
###########

# fiber table
child_20_fibersorted = child_20[order(child_20$fiber_perc_g),]
xtable(data.frame(name = child_20_fibersorted$name, sugar_perc = child_20_fibersorted$fiber_perc_g*100), digits = 1)

# stem-and-leaf
stem(child_20$fiber_perc_g*100)

# dot plot
myPDF("cereal_fiber_dot.pdf", 7.5, 1.5,
      mar = c(3.6, 1, 0, 1), las = 1,
      mgp = c(2.5, 0.7, 0), tcl = -0.4)
BHH2::dotPlot(child_20$fiber_perc_g, pch = 19, xlab = "fiber content (% of grams)")
dev.off()

# histogram
myPDF("cereal_fiber_hist.pdf", 7.5, 4,
      mar = c(3.6, 3.6, 0, 1), las = 1,
      mgp = c(2.5, 0.7, 0), tcl = -0.4)
histPlot(child_20$fiber_perc_g, xlab = "fiber content (% of grams)", col = COL[1])
dev.off()

# relative frequency
myPDF("cereal_fiber_relhist.pdf", 7.5, 4,
      mar = c(3.6, 3.6, 0, 1), las = 1,
      mgp = c(2.5, 0.7, 0), tcl = -0.4)
histPlot(child_20$fiber_perc_g, xlab = "fiber content (% of grams)", col = COL[1], axes = FALSE, ylab = "relative frequency", ylim = c(0,7))
axis(1)
axis(2, at = c(0:7), label = c(0, NA, 2, NA, 4, NA, 6, NA)/20, las = 2)
dev.off()


###########
## sugar ##
###########
# sugar table
child_20_sugarsorted = child_20[order(child_20$sugar_perc_g),]

xtable(data.frame(name = child_20_sugarsorted$name, sugar_perc = child_20_sugarsorted$sugar_perc_g*100), digits = 0)

# stem-and-leaf
stem(child_20$sugar_perc_g)

# dot plot
myPDF("cereal_sugar_dot.pdf", 7.5, 1.5,
      mar = c(3.6, 1, 0, 1), las = 1,
      mgp = c(2.5, 0.7, 0), tcl = -0.4)
BHH2::dotPlot(child_20$sugar_perc_g, pch = 19, xlab = "sugar content (% of grams)")
dev.off()

# histogram
myPDF("cereal_sugar_hist.pdf", 7.5, 4,
      mar = c(3.6, 3.6, 0, 1), las = 1,
      mgp = c(2.5, 0.7, 0), tcl = -0.4)
histPlot(child_20$sugar_perc_g, xlab = "sugar content (% of grams)", col = COL[1])
dev.off()

# relative frequency
myPDF("cereal_sugar_relhist.pdf", 7.5, 4,
      mar = c(3.6, 3.6, 0, 1), las = 1,
      mgp = c(2.5, 0.7, 0), tcl = -0.4)
histPlot(child_20$sugar_perc_g, xlab = "sugar content (% of grams)", col = COL[1], axes = FALSE, ylab = "relative frequency")
axis(1)
axis(2, at = c(0:6), label = c(0:6)/20, las = 2)
dev.off()



