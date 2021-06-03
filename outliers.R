#Upset plot
data <- read.csv("/Users/tomoyauchiyama/AutoReg/09_all_seq_with_PTC_10", header = TRUE)
upset(data, sets = c("droGri2","droVir3","droMir2","droPse3","droFic2","droEug2","droBia2","droEre2","droSec1","dm6"), keep.order = TRUE, order.by = "freq", mainbar.y.label = "# of intersecting stpcdn", sets.x.label = "# of species-specific stpcdn",mb.ratio = c(0.6, 0.4), point.size = 4.0, line.size = 0, text.scale = c(2, 2.5, 2, 2.5, 2.5, 2.5))

#繰り返しスミルノフ・グラブス検定を行う
#https://www.trifields.jp/how-to-remove-outliers-using-smirnov%E2%80%90grubbs-test-in-r-2114
remove.outliers <- function(x, conf.level = 0.95)
{
  x <- x[!is.na(x)]
  del.val <- NULL
  
  while (TRUE) {
    n <- length(x)
    if (n < 3) {
      break
    }
    
    r <- range(x)
    t <- abs(r - mean(x)) / sd(x)
    q <- sqrt((n - 2) / ((n - 1) ^ 2 / t ^ 2 / n - 1))
    p <- n * pt(q, n - 2, lower.tail = FALSE)
    
    if (t[1] < t[2]) {
      if (p[2] < 1 - conf.level) {
        del.val <- c(del.val, r[2])
        x <- x[x != r[2]]
        next
      }
    } else {
      if (p[1] < 1 - conf.level) {
        del.val <- c(del.val, r[1])
        x <- x[x != r[1]]
        next
      }
    }
    break
  }
  return(list(x = x, del.val = del.val))
}