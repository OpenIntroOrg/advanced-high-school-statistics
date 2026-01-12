library(openintro)

pew_ev<-as.table(matrix(c(748, 621, 207, 1466, 978, 353, 460, 130, 122), ncol=3, byrow=TRUE))
colnames(pew_ev)<-c("Not too or\nnot at all likely\n", "Very or \nsomewhat likely\n", "\t\t\tDon't expect to \n\t\t\tbuy a vehicle\n")
rownames(pew_ev)<-c("Urban", "Suburban", "Rural")


tab  <- t(pew_ev)

rp <- prop.table(tab, 1)
cp <- prop.table(tab, 2)

pew_ev_exp<-as.table(matrix(c(828.8,535.9,211.4,1471.0,951.0,375.1,374.4,242.1,95.5), ncol=3, byrow=TRUE))
colnames(pew_ev_exp)<-c("Not too or\nnot at all likely\n", "Very or \nsomewhat likely\n", "\t\t\tDon't expect to \n\t\t\tbuy a vehicle\n")
rownames(pew_ev_exp)<-c("Urban", "Suburban", "Rural")
tab2 = t(pew_ev_exp)

myPDF("pew_ev_mosaic.pdf",
      4.1,
      3, mar=c(.5,1,1,.5),mgp = c(.3, 0.3, 0))
mosaicplot(tab,
           main = '',
           xlab = '',
           ylab = '',
           off = 3,
           col = COL[c(2, 1, 4)]
          )
dev.off()

myPDF("pew_ev_exp_mosaic.pdf",
      4.1,
      3, mar=c(.5,1,1,.5),mgp = c(.3, 0.3, 0))
mosaicplot(tab2,
           main = '',
           xlab = '',
           ylab = '',
           off = 3,
           col = COL[c(2, 1, 4)]
)
dev.off()
