library(openintro)
data(countyComplete)
data(COL)


set.seed(5)
individualsub <- subset(loans_full_schema, application_type=="individual")
jointsub <- subset(loans_full_schema, application_type=="joint")

sample_indices_individual <- sample(nrow(individualsub), size = 50, replace = FALSE)
sample_indices_joint <- sample(nrow(jointsub), size = 40, replace = FALSE)

sampleIndividual <- individualsub[sample_indices_individual, ]
sampleJoint<- jointsub[sample_indices_joint, ]

combined_data <- rbind(sampleIndividual, sampleJoint)


pov = combined_data$interest_rate
pop = combined_data$application_type

combined_data$application_type<-relevel(combined_data$application_type, "joint")

myPDF("interestRateSplitByTypeBoxplot.pdf", 5, 2,
      mar = c(3.5, 3.8, .5, 0.5),
      mgp = c(2.4, 0.7, 0))
boxplot(interest_rate~application_type,data=combined_data,
        axes = FALSE,horizontal = TRUE,col="white",border=c(COL[4],COL[1],COL[1]),whisklty = 1,lwd=1.5,
        xlab = 'Interest rate',at = c(2,3,3),cex.lab=1,
        ylab = '')
AxisInPercent(1, at = pretty(pov), cex.axis=1)
mtext("Individual\nloans",2,at=3, cex=1)
mtext("Joint\nloans",2,at=1.9,cex=1)
dev.off()



myPDF("interestRateSplitByTypeBoxplot2.pdf", 4, 4,
      mar = c(3.2, 4.6, 1, 0.5),
      mgp = c(2.4, 0.7, 0))
boxPlot(pov, pop, 
        axes = FALSE,
        xlim = c(0.5, 2.5),
      #  xlab = 'Application type',
        ylab = '',
        lcol = "#00000000",
        col = "#00000000")
axis(1, at = 1:2, c("Individual", "Joint"))
AxisInPercent(2, at = pretty(pov))
par(las = 0)
mtext("Interest rate", 2, 3.6)
par(las = 1)
boxPlot(pov[pop == "individual"], 
        lcol = COL[1],
        col = COL[1,3],
        add = 1)
boxPlot(pov[pop == "joint"],
        lcol = COL[4],
        col = COL[4,3],
        add = 2)
dev.off()

myPDF("interestRateSplitByTypeHistogram.pdf", 4, 4,
      mar = c(3.6, 4.6, 1, 0.5),
      mgp = c(2.4, 0.7, 0),mfrow=c(2,1))

hist(round(pov[pop == 'individual'],0),
     breaks = 5,right = FALSE,
     main='',
     probability = FALSE,
     xlim = c(5,35),
     ylim=c(0,23),
     col = COL[1],
     xlab = '',
     ylab = 'Frequency', 
     yaxs="i")
title(xlab = "Interest rate for 50 Individual loans", line = 2.4) 
hist(round(pov[pop == 'joint'],0),
     breaks = 5,right = FALSE,
     xlim=c(5,35), main='',
     xlab = '',
     ylim=c(0,23),
     col = COL[4],
     probability = FALSE)
title(xlab = "Interest rate for 40 Joint loans", line = 2.4) 

dev.off()
myPDF("interestRateSplitByTypeDotPlot.pdf", 4, 4,
      mar = c(3.6, 0, 0, 0),
      mgp = c(2.4, 0.7, 0),mfrow=c(2,1))
stripchart(round(pov[pop == 'individual'],0), method="stack",offset = .5,pch=19,at=0,frame=FALSE,bty='n',col = COL[1], xlim=c(5,35), ylim=c(0,5),xlab="Interest rate for 50 Individual loans")
stripchart(round(pov[pop == 'joint'],0), method="stack",offset = .5,pch=19,at=0,frame=FALSE,bty='n',col = COL[4], xlim=c(5,35),ylim=c(0,5), xlab="Interest rate for 40 Joint loans")


dev.off()
