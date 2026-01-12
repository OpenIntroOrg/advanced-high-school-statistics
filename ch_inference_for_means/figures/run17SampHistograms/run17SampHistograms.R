library(openintro)
data(COL)
data(run17)

set.seed(1)
run17 <- subset(run17, event == "10 Mile")
mean(run17$net_sec / 60)
d <- run17[sample(nrow(run17), 100), ]
myPDF("run17SampHistograms.pdf", 5, 2.8,
      mar = c(3.5, 3.5, 0.5, 1),
      mgp = c(2.2, 0.55, 0))
histPlot(d$net_sec / 60,
         main = "",
         xlab = "Time (Minutes)",
         ylab = "Frequency",
         col = COL[1],yaxs="i")
dev.off()



dotPlotStack <- function(x, center,
                         radius = 1, seed = 1,
                         addDots = TRUE, ...){
  set.seed(seed)
  x <- sample(x)
  y <- rep(NA, length(x))
  y[1] <- 1
  for (i in 2:length(x)) {
    add <- TRUE
    for (s in seq(radius, i * radius, radius / 20)) {
      these <- 1:(i - 1)
      dx    <- (x[i] - x[these])^2
      dy    <- (s - y[these])^2
      if(any(dx+dy < radius^2) || !add){
        next
      } else {
        if (addDots) {
          points(x[i], s, ...)
        }
        y[i] <- s
        add  <- FALSE
      }
    }
  }
  invisible(list(max(y) + radius, x))
}

set.seed(10)


myPDF("simulation.pdf", 7, 1.4,
      mar = c(3.1, 1, 0.5, 1), las = 1,
      mgp = c(2, 0.7, 0))
cex  <- 1
tmp  <- table(round(d) + 0.2)
x    <- rep(as.numeric(names(tmp)), tmp)
y    <- unlist((sapply(tmp, function(x) 1:x)))
plot(x, y,
     xlab = "Number of Characters (in thousands)",
     axes = FALSE, ylab = "", xlim = c(0, 70),
     ylim = c(0, 1.1*max(tmp)),
     col = COL[1], cex = cex, pch = 19, yaxs="i")
abline(h = 0)
axis(1, at = seq(0, 80, 10))
dev.off()



