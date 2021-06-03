library(ggplot2)

data <- read.delim("/Users/tomoyauchiyama/200723/EI_Rosenberg/EI_A5SS_score.txt", header=TRUE)
plot(data$EI_score,data$A5SS_score, pch = 21, cex=1.2,, ylab="Exonic A5SS score", bg = c("yellow", "blue", "red")[unclass(data$ID)])
lm<-lm(data$A5SS_score~data$EI_score)
abline(lm,lwd=6)
summary(lm)
data <- read.delim("/Users/tomoyauchiyama/200723/DM_ESE_ISE/01_intron_len_dist", header=TRUE, row.names=1)
mtext("N=4096, R-squared=0.3114, y^=0.175542+1.366561x",side=3,cex=0.7)


#######
library(ggplot2)

data <- read.delim("/Users/tomoyauchiyama/AutoReg_R/03_matome", header = TRUE)
my_data <- data.frame(data)
ggplot(my_data, aes(absD, difD)) + geom_point(size = 0.7, alpha = 1, na.rm = T) + theme_test() + xlab("absD") + ylab("difD") + stat_smooth(method = "lm", se = FALSE, colour = "black", size = 0.5) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold")) + geom_vline(xintercept = 397, colour="#990000", linetype="dashed") + geom_hline(yintercept = 198, colour="#990000", linetype="dashed") +  scale_y_continuous(breaks=seq(-3000,9000,by=1500),limits=c(-3000,9000)) +  scale_x_continuous(breaks=seq(0,11000,by=1000),limits=c(0,11000))
