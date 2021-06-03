IsoR <- data.frame(X1WKB=c(1.97, 1.90, 1.99),X1WKO=c(1.89, 1.88, 1.99),X6WKB=c(1.10, 1.44, 1.28), X6WKO=c(1.65, 1.83, 1.70))
rm <- apply(IsoR, 2, mean)
rs <- apply(IsoR, 2, sd)

IsoT <- data.frame(X1WKB=c(0.20, 0.20, 0.09), X1WKO=c(0.00, 0.13, 0.05),X6WKB=c(0.23, 0.12, 0.12), X6WKO=c(0.28, 0.04, 0.15))
tm <- apply(IsoT, 2, mean)
ts <- apply(IsoT, 2, sd)

m <- cbind(c(1.953333,1.920000,1.273333,1.726667),c(0.1633333,0.0600000,0.1566667,0.1566667))
colnames(m) <- c("IsoR", "IsoT")
rownames(m) <- c("1WKB", "1WKO", "6WKB", "6WKO")

s <- cbind(c(0.04725816,0.06082763,0.17009801,0.09291573),c(0.06350853,0.06557439,0.06350853,0.12013881))
colnames(s) <- c("IsoR", "IsoT")
rownames(s) <- c("1WKB", "1WKO", "6WKB", "6WKO")
           
b <- barplot(m, beside = TRUE, xlab = "gene", ylab = "log(TPM+1)",ylim = c(0,2.5))
arrows(b, m - s, b, m + s, code = 3, lwd = 1, angle = 90, length = 0.1)
