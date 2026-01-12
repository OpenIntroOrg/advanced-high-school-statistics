require(openintro)


myPDF('gsearch.pdf',
      7,
      3,
      mar = c(3.6, 4.2, 3, 1.5),
      mgp = c(3.2, 0.55, 0),
      mfrow = 1:2)
a <- subset(gsearch, type == "no new search")$outcome
b <- subset(gsearch, type == "new search")$outcome
t <- table(a)
names(t) <- tolower(names(t))
u <- table(b)
names(u) <- tolower(names(u))

barplot(t/sum(t),
        axes = FALSE,
        main = 'success',
        ylim = c(0,0.6),
        col = COL[c(2, 1, 4)])
abline(h = 0)
par(las = 0)
at <- seq(0, 0.6, 0.2)
axis(2, at = at, labels = c(0,0.2, 0.4, 0.6))
mtext("outcome", 1, 2.4)
mtext('Relative frequency', side = 2, line = 2.7)

par(mar = c(3.6, 4.7, 3, 1))
barplot(u/sum(u),
        axes = FALSE,
        main = 'failure',
        ylim = c(0,0.6),
        col = COL[c(2, 1, 4)])
at <- seq(0, 0.6, 0.2)
axis(2, at = at, labels = c(0,0.2, 0.4, 0.6))
# AxisInPercent(2, at = seq(0, 40, 10))
par(las = 0)
mtext("outcome", 1, 2.4)
mtext('Relative frequency', side = 2, line = 2.7)

abline(h = 0)
dev.off()




tab <- table(gsearch[,c('type', 'outcome')])
row.names(tab) <- c("failure", "success")
tab <- t(tab)

tab_rev<-tab[,c(2,1)]
rp <- prop.table(tab_rev, 1)
cp <- prop.table(tab_rev, 2)

myPDF("gsearchSegBar.pdf", 4.1, 3,  mar=c(2, 2.5, 1.5, 0.5), mgp=c(2.2, 0.6, 0))
barplot(apply(tab, 1, sum)/apply(tab, 1, sum), col=COL[2])
tabTemp <- rp[,2]
names(tabTemp) <- NULL
barplot(tabTemp, col=COL[1], add=TRUE, axes=FALSE)
abline(h=0)
legend("right", bg="white",
       fill = COL[c(2,1)],
       legend = c("success","failure"))
dev.off()

myPDF("gsearch_mosaic2.pdf",
      4.1,
      3, mar=c(2,1,1,.5))
mosaicplot(tab_rev,
           main = '',
           xlab = '',
           ylab = '',
           off = 3,
           col = COL[c(2, 1)]
)
dev.off()

myPDF("gsearchSegBar2.pdf", 4.05, 2.5, mar=c(2, 2.5, 0.5, 0.5), mgp=c(2.2, 0.6, 0))
barplot(apply(tab_rev, 1, sum)/apply(tab_rev, 1, sum), col=COL[3])
tabTemp <- rp[,1]
names(tabTemp) <- NULL
barplot(tabTemp, col=COL[1], add=TRUE, axes=FALSE)
abline(h=0)
legend("right", bg="white",
       fill = COL[c(3,1)],
       legend = c("failure", "success"))
dev.off()

myPDF("gsearch_mosaic.pdf",
      4.1,
      3, mar=c(.5,1,1,.5))
mosaicplot(tab_rev,
           main = '',
           xlab = '',
           ylab = '',
           off = 3,
           col = COL[c(2, 1)]
)
dev.off()


tab_exp<-chisq.test(tab_rev)$expected
myPDF("gsearch_exp_mosaic.pdf",
      4.1,
      3, mar=c(.5,1,1,.5))
mosaicplot(tab_exp,
           main = '',
           xlab = '',
           ylab = '',
           off = 3,
           col = COL[c(2, 1, 4)]
)
dev.off()