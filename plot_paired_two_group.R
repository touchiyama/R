library(ggplot2)

data <- read.delim("/Users/tomoyauchiyama/inclusionLevel/O1/boxplot_AS/B_time_dep.txt", header = TRUE)
my_data <- data.frame(strain=rep(c("B","O"),each=nrow(data)),Δpsi=c(data$dB,data$dO),group=data$ID)
ggplot(my_data,aes(x=strain,y=Δpsi,group=group)) +geom_point(aes(colour=strain), size=1.5, position=position_dodge(width=0.1)) + geom_line(size=0.2, alpha=1.0, position=position_dodge(width=0.1)) + scale_colour_manual(values=c("blue", "green")) + scale_y_continuous(breaks=seq(-0.4,0.4,length=5),limits=c(-0.4,0.4)) + xlab('strain') + ylab('Δpsi(6WK-1WK)') + coord_flip() + geom_hline(aes(yintercept=0.1), colour="black",linetype="dashed") + geom_hline(aes(yintercept=-0.1), colour="black",linetype="dashed") + theme_classic()

##
> ggplot(my_data,aes(x=strain,y=Δpsi,group=group)) 
+ geom_point(aes(colour=strain), size=1.5, position=position_dodge(width=0.1)) 
+ geom_line(size=0.2, alpha=1.0, position=position_dodge(width=0.1)) 
+ scale_colour_manual(values=c("blue", "green")) 
+ scale_y_continuous(breaks=seq(-0.4,0.4,length=5),limits=c(-0.4,0.4)) 
+ xlab('strain') 
+ ylab('Δpsi(6WK-1WK)') 
+ coord_flip()
+ geom_hline(aes(yintercept=0.1), colour="black",linetype="dashed")
+ geom_hline(aes(yintercept=-0.1), colour="black",linetype="dashed") 
+ theme_classic()