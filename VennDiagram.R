library(VennDiagram)

args <- commandArgs(trailingOnly=TRUE)[1]

file_name <- paste(args,"png",sep=".")
name <- args

AS_1wk <- scan("./AS_1WK",what = character(),sep = "\n",blank.lines.skip = F)
AS_6wk <- scan("./AS_6WK",what = character(),sep = "\n",blank.lines.skip = F)
TX_1wk <- scan("./TX_1WK",what = character(),sep = "\n",blank.lines.skip = F)
TX_6wk <- scan("./TX_6WK",what = character(),sep = "\n",blank.lines.skip = F)

list <- list(AS_1WK=AS_1wk,TX_6WK=TX_6wk,AS_6WK=AS_6wk,TX_1WK=TX_1wk)

venn.diagram(list,filename=file_name,fill=c(2,3,4,5),alpha=0.4,lty=1,main=name)

#e1 <- intersect(tp0h,tp1h)
