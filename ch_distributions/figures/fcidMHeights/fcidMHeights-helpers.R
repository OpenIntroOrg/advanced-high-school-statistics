
QQNorm <- function(x, M, SD, col) {
  qqnorm(x,
         cex = 0.7,
         main = '',
         axes = FALSE,
         ylab = 'Male Heights (inches)',
         col = col)
  axis(1,seq(-3,3,1),pos=60)
  axis(2,seq(60,80,5))
  abline(M, SD)
}

NormalHist <- function(obs, hold, M, SD, col) {
  plot(0, 0,
       type = 'n',
       xlab = 'Male Heights (inches)',
       ylab = '',
       axes = FALSE,
       main = '',
       yaxs="i",
       xlim = M + c(-3, 3) * SD,
       ylim = c(0, max(hold$density)))
  for (i in 1:length(hold$counts)) {
    rect(hold$breaks[i], 0,
         hold$breaks[i + 1], hold$density[i],
         col = col)
  }
  axis(1)
  x <- seq(min(obs) - 2, max(obs) + 2, 0.01)
  y <- dnorm(x, M, SD)
  lines(x, y, lwd = 1.5)
}