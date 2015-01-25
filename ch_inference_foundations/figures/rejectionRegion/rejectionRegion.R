
#===> rejectionRegion <===#

par(mar=rep(0,4))
plot(0:1, c(0.15, 0.77), type='n', axes=FALSE)
arrows(0, 0.5, 1, 0.5, code=3)
points(0.35, 0.5, pch=20)
text(0.35, 0.5, 0, pos=1)
points(0.65, 0.5)
text(0.65, 0.5, 5000, pos=1)
text(0.65, 0.35, 'critical value', pos=1, cex=0.7)
arrows(0.65, 0.5, 1, 0.5, lwd=3)
text(0.82, 0.5, expression('Reject'~H[0]), pos=3)
#text(0.5, 0.05, 'd')


#===> rejectionRegionAp <===#

par(mar=rep(0,4), mfrow=c(2,1))

plot(c(-0.05,1), c(0.25, 0.77), type='n', axes=FALSE)
arrows(0, 0.5, 1, 0.5, code=3)
points(0.5, 0.5, pch=20)
text(0.5, 0.5, '0', pos=1)
points(0.75, 0.5)
text(0.75, 0.5, 1.65, pos=1)
#text(0.75, 0.35, 'critical value', pos=1, cex=0.7)
arrows(0.75, 0.5, 1, 0.5, lwd=3)
text(0.85, 0.45, expression('Reject'~H[0]), pos=3)
text(-0.1, 0.7, 'one-sided', pos=4, cex=0.7)

plot(c(-0.05,1), c(0.25, 0.77), type='n', axes=FALSE)
arrows(0, 0.5, 1, 0.5, code=3)
points(0.5, 0.5, pch=20)
text(0.5, 0.5, '0', pos=1)
points(0.8, 0.5)
text(0.8, 0.5, 1.96, pos=1)
arrows(0.8, 0.5, 1, 0.5, lwd=3)
text(0.88, 0.45, expression('Reject'~H[0]), pos=3)
points(0.2, 0.5)
text(0.2, 0.5, -1.96, pos=1)
arrows(0.2, 0.5, 0, 0.5, lwd=3)
text(0.12, 0.45, expression('Reject'~H[0]), pos=3)
text(-0.1, 0.7, 'two-sided', pos=4, cex=0.7)

#===> rejectAbove2970 <===#

par(mar=rep(0,4), mfrow=c(1,1))
plot(c(-0.05,1), c(0.25, 0.67), type='n', axes=FALSE)
arrows(0, 0.5, 1, 0.5, code=3)
points(0.5, 0.5, pch=20)
text(0.5, 0.475, '0', pos=1)
points(0.75, 0.5)
text(0.75, 0.475, '$2970', pos=1)
text(0.75, 0.38, 'critical value', pos=1, cex=0.7)
arrows(0.75, 0.5, 1, 0.5, lwd=3)
text(0.85, 0.475, expression('Reject'~H[0]), pos=3)

#===> rejectAbove95 <===#

par(mar=rep(0,4), mfrow=c(1,1))
plot(c(-0.05,1), c(0.25, 0.67), type='n', axes=FALSE)
arrows(0, 0.5, 1, 0.5, code=3)
points(0.5, 0.5, pch=20)
text(0.5, 0.475, '0', pos=1)
points(0.75, 0.5)
text(0.75, 0.475, '1.65', pos=1)
text(0.75, 0.38, 'critical value', pos=1, cex=0.7)
arrows(0.75, 0.5, 1, 0.5, lwd=3)
text(0.85, 0.475, expression('Reject'~H[0]), pos=3)

