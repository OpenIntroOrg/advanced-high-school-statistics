library(openintro)

loans_full_schema$application_type <- factor(
  as.character(loans_full_schema$application_type),
  rev(unique(as.character(loans_full_schema$application_type)))
)

loans_full_schema$homeownership <- factor(
  tolower(as.character(loans_full_schema$homeownership)),
  levels = c("rent", "mortgage", "own")
)



# 
# tab <- table(loans_full_schema[, c("application_type", "homeownership")])
# tab<-tab[c(2,3),c(3,4,5)]
#  tab <- tab[
#    c("individual", "joint"),
#    c("RENT", "MORTGAGE", "OWN")]
# 
#  tab_swapped <- tab[c(2,1),]
#  rownames(tab_swapped) <- tolower(rownames(tab_swapped))
#  colnames(tab_swapped) <- tolower(colnames(tab_swapped))
#  
#  rownames(tab) <- tolower(rownames(tab))
#  colnames(tab) <- tolower(colnames(tab))
#  
#  rp <- prop.table(tab, 1)
#  cp <- prop.table(tab, 2)

# myPDF("loan_home_mosaic.pdf",
#       2.625,
#       2.25,
#       mar = rep(1, 4) / 4)
# mosaicplot(rowSums(t(tab)),
#            main = '',
#            xlab = '',
#            ylab = '',
#            off = 4,
#            col = COL[c(2,1,4)])
# dev.off()

myPDF("loan_app_type_home_mosaic.pdf",
      3,
      2.25,
      mar = c(0.25, 2.7, 1, .3))
MosaicPlot(homeownership ~ application_type, loans_full_schema, las=3,
           col = COL[c(2, 1, 4)],
           off = 0.02)
dev.off()


#Original code: does not run!
# myPDF("loan_app_type_home_mosaic2.pdf",
#       3,
#       2.25,
#       mar = c(0.25, 2, 1, 1))
# levels(loans_full_schema$application_type)[1] <- "indiv."
# MosaicPlot(homeownership ~ application_type, loans_full_schema,
#            col = COL[c(2, 1, 4)],
#            off = 0.02)
# dev.off()


#Original code, does not produce three colors.
# myPDF("loan_app_type_home_mosaic_rev.pdf",
#       3 / 1.2,
#       2.25 / 1.5,
#       mar = rep(1, 4) / 4)
# mosaicplot(t(tab),
#            main = '',
#            xlab = '',
#            ylab = '',
#            col = COL[c(2, 1, 4)])
# dev.off()
