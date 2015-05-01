library(xtable)


nrows <- 75
ncols <- 40
nrows.split <- 5
ncol.split <- 5
set.seed(25)
rand <- sample(0:9, nrows * ncols, replace = TRUE)
tab <- matrix(rand, nrows, ncols)
GroupByN <- function(x, n, last = FALSE) {
  these <- which(nchar(x) == 1)
  if (length(these) == 0 || last) {
    return(x)
  }
  these <- these[1:min(n, length(these))]
  tmp <- paste(x[these], collapse = "")
  x[these[1]] <- tmp
  new <- x[1:these[1]]
  if (length(x) > max(these)) {
    new <- append(new, x[(max(these) + 1):length(x)])
  }
  last <- last || length(these) < n
  return(Recall(new, n, last))
}
# GroupByN(x = letters, n = 5)
tab <- apply(tab, 1, GroupByN, n = 5)
tab <- t(tab)
rows <- apply(tab, 1, paste, collapse = " & \\quad & ")
rows <- paste(1:nrows, "&", rows, "\\\\")
rows. <- rows[1]
cline <- paste0("\\cline{2-", 2 * ncols / ncol.split - 1, "}")
hline <- "\\hline"
for (i in 2:length(rows)) {
  rows. <- append(rows., rows[i])
  if (i %% nrows.split == 0) {
    rows. <- append(rows., hline)
  }
}
to.print <- paste(rows., collapse = "\n")
cat(to.print)

