library(openintro)
data(COL)

d <- subset(simulated_scatter, group == 5)

myPDF('notGoodAtAllForALinearModel.pdf', 6.4, 2.743,
      mar = c(3, 4, 1, 2))
PlotWLine(d$x, d$y,
          xlab = 'Angle of Incline (Degrees)',
          ylab = 'Distance Traveled (m)',
          xaxs="i",
          yaxs="i",
          axes = FALSE,
          col = COL[1])
axis(2, at = seq(0, 20, 5),pos=0)
axis(1, at = seq(0, 90, 30),pos=0)
text(mean(d$x), mean(d$y),
     'Best fitting line is flat (!)',
     pos = 1,
     col = COL[4])
rect(par("usr")[1],par("usr")[3]+1.5,par("usr")[2],par("usr")[4],col = COL[5,9], border=NA)

dev.off()
