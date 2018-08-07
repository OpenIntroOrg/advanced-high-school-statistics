library(xtable)

source("http://www.openintro.org/stat/data/cdc.R")

cdc$hlthplan[cdc$hlthplan == 0] = "No"
cdc$hlthplan[cdc$hlthplan == 1] = "Yes"

levels(cdc$genhlth) = c("Excellent", "Very good", "Good", "Fair", "Poor")

xtable(addmargins(table(cdc$hlthplan, cdc$genhlth)), digits = 0)

xtable(addmargins(prop.table(table(cdc$hlthplan, cdc$genhlth))), digits = 4)