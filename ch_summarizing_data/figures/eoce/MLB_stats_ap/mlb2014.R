library(xtable)

d = read.csv("mlb2014.csv")

# sample of 10
set.seed(345)
d10 = d[sample(1:nrow(d), 10), ]
d10 = d10[order(d10$team), ]
xtable(data.frame(Team = d10$team, Runs = d10$runs, Home_runs = d10$home_runs, Batting_avg = d10$batting_avg), digits = 3)

# scatterplots
myPDF("runs_home_runs.pdf", 5, 3.3, mar=c(3.6,3.6,1,1), mgp=c(2.5,0.7,0))
plot(d10$runs ~ d10$home_runs, xlab='Home runs', ylab='Runs', pch=19, col=COL[1])
dev.off()

myPDF("runs_batting_avg.pdf", 5, 3.3, mar=c(3.6,3.6,1,1), mgp=c(2.5,0.7,0))
plot(d10$runs ~ d10$batting_avg, xlab='Batting average', ylab='Runs', pch=19, col=COL[1])
dev.off()