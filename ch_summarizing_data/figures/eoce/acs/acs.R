library(openintro)
data(acs12)
#load("acs.RData")

# drop unemployed
acs = acs[acs$employment == "employed" & !is.na(acs$employment) & acs$income > 0 & !is.na(acs$income), ]

# take a random sample of 20
set.seed(100)
acs20 = acs[sample(1:nrow(acs), 20), ]

##########
# Part 1 #
##########

# create table
xtable(data.frame(Income = acs20$income, Age = acs20$age, Gender = acs20$gender))

myPDF("income_age.pdf", 5, 3.3)
par(mar=c(3.6,3.6,1,1), mgp=c(2.5,0.7,0), cex.lab = 1.25, cex.axis = 1.25)
plot(acs20$income ~ acs20$age, xlab='Age', ylab='Income', pch=19, col=COL[1,2], axes = FALSE, ylim = c(0, 120000), xlim = c(15,65))
axis(1)
axis(2, at = seq(0, 120000, 20000), labels = c(0, "20K", "40K", "60K", "80K", "100K", "120K"), las = 1)
dev.off()

myPDF("income_age_male.pdf", 5, 3.3)
par(mar=c(3.6,3.6,1,1), mgp=c(2.5,0.7,0), cex.lab = 1.25, cex.axis = 1.25)
plot(acs20$income[acs20$gender == "male"] ~ acs20$age[acs20$gender == "male"], xlab='Age', ylab='Income', pch=19, col=COL[2,2], axes = FALSE, ylim = c(0, 120000), xlim = c(15,65))
axis(1)
axis(2, at = seq(0, 120000, 20000), labels = c(0, "20K", "40K", "60K", "80K", "100K", "120K"), las = 1)
dev.off()

myPDF("income_age_female.pdf", 5, 3.3)
par(mar=c(3.6,3.6,1,1), mgp=c(2.5,0.7,0), cex.lab = 1.25, cex.axis = 1.25)
plot(acs20$income[acs20$gender == "female"] ~ acs20$age[acs20$gender == "female"], xlab='Age', ylab='Income', pch=19, col=COL[4,2], axes = FALSE, ylim = c(0, 120000), xlim = c(15,65))
axis(1)
axis(2, at = seq(0, 120000, 20000), labels = c(0, "20K", "40K", "60K", "80K", "100K", "120K"), las = 1)
dev.off()

##########
# Part 2 #
##########

myPDF("income_male_female.pdf", 5, 3.3, mar=c(3.6, 2, 1, 0.5), mgp=c(2.4, 0.7, 0))
par(cex.lab = 1.25, cex.axis = 1.25)
histPlot(acs20$income[acs20$gender == "male"], border = COL[1], hollow = TRUE, xlab = "Income", ylab = "", lwd = 3, axes = FALSE)
axis(2)
axis(1, seq(0, 120000, 20000), labels = c(0, "20K", "40K", "60K", "80K", "100K", "120K"))
histPlot(acs20$income[acs20$gender == "female"], border = COL[4], hollow = TRUE, add = TRUE, lty=3, lwd=4)
legend("topright", c("male", "female"), lty = c(2,3), col = c(COL[1],COL[4]), lwd = c(3,4), cex = 1.1)
dev.off()
