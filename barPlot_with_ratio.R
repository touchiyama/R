library(ggplot2)

#genes with poison exon (GWN)
cg <- (428/13892)*100
RBP <- (35/482)*100
SF <- (23/155)*100

type <- c("All_coding-genes", "RBP_genes", "SF_genes")
ratio <- c(cg,RBP,SF)
my_data <- data.frame(type=type,ratio=ratio)

#ggplot(my_data, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(labels = scales::percent, breaks=seq(0,0.25,by=0.05),limits=c(0,0.25)) + theme_classic() + ylab(expression("% of GWN")) + xlab(expression("type")) +  scale_fill_manual(values = c("gray", "cyan4", "salmon"))
ggplot(my_data, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(breaks=seq(0,20,by=5),limits=c(0,20)) + theme_bw(base_family = "sans") + theme_test() + ylab("Proportion of GWN (%)") +  scale_fill_manual(values = c("gray", "cyan4", "salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold",), axis.text.x = element_text(size=12.0,face="bold",angle=35, hjust=1), axis.title.y = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines")) 

#genes with essential exon
cg <- (5011/13892) * 100
RBP <- (198/482) * 100
SF <- (72/155) * 100

type <- c("All_coding-genes", "RBP_genes", "SF_genes")
ratio <- c(cg,RBP,SF)
my_data <- data.frame(type=type,ratio=ratio)

#ggplot(my_data, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(labels = scales::percent, breaks=seq(0,0.25,by=0.05),limits=c(0,0.25)) + theme_classic() + ylab(expression("% of GWN")) + xlab(expression("type")) +  scale_fill_manual(values = c("gray", "cyan4", "salmon"))
ggplot(my_data, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(breaks=seq(0,60,by=20),limits=c(0,60)) + theme_bw(base_family = "sans") + theme_test() + ylab("Proportion of genes with essential exon (%)") +  scale_fill_manual(values = c("gray", "cyan4", "salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold",angle=35, hjust=1), axis.title.y = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines"))

#x軸を変える

RBP_GWO <- (64/447) * 100
RBP_GWN <- (17/35) * 100
Splicing_GWO <- (37/132) * 100
Splicing_GWN <- (14/23) * 100

type <- c("RBP_GWO", "RBP_GWN","SF_GWO","SF_GWN")
ratio <- c(RBP_GWO,RBP_GWN,Splicing_GWO,Splicing_GWN)
my_data <- data.frame(type=type,ratio=ratio)
my_data2 <- transform(my_data, type= factor(type, levels = c("RBP_GWO", "RBP_GWN","SF_GWO","SF_GWN")))
ggplot(my_data2, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(breaks=seq(0,75,by=25),limits=c(0,75)) + theme_bw(base_family = "sans") + theme_test() + ylab("Proportion of self-binding (%)") +  scale_fill_manual(values = c("navyblue", "cyan4","orange3","salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold",angle=35, hjust=1), axis.title.y = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines"))
#ggplot(my_data2, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(labels = scales::percent, breaks=seq(0,0.75,by=0.25),limits=c(0,0.75)) + theme_classic() + ylab("% of self-binding") +  scale_fill_manual(values = c("gray", "salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"))

RBP_GWO <- (32/284) * 100
RBP_GWN <- (49/198) * 100
Splicing_GWO <- (22/83) * 100
Splicing_GWN <- (29/72) * 100

type <- c("RBP_without_EE", "RBP_with_EE","SF_without_EE","SF_with_EE")
ratio <- c(RBP_GWO,RBP_GWN,Splicing_GWO,Splicing_GWN)
my_data <- data.frame(type=type,ratio=ratio)
my_data2 <- transform(my_data, type= factor(type, levels = c("RBP_without_EE", "RBP_with_EE","SF_without_EE","SF_with_EE")))
ggplot(my_data2, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(breaks=seq(0,60,by=20),limits=c(0,60)) + theme_bw(base_family = "sans") + theme_test() + ylab("Proportion of self-binding (%)") +  scale_fill_manual(values = c("navyblue", "cyan4","orange3","salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold",angle=35, hjust=1), axis.title.y = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines"))


## % of genes with PE or EE
All_PCG_with_PE <- (428/13892) * 100
RBP_with_PE <- (35/482) * 100
All_PCG_with_EE <- (5011/13892) * 100
RBP_with_EE <- (198/482) * 100

type <- c("All_PCG_with_PE", "RBP_with_PE","All_PCG_with_EE","RBP_with_EE")
ratio <- c(All_PCG_with_PE,RBP_with_PE,All_PCG_with_EE,RBP_with_EE)
my_data <- data.frame(type=type,ratio=ratio)
my_data2 <- transform(my_data, type= factor(type, levels = c("All_PCG_with_PE", "RBP_with_PE","All_PCG_with_EE","RBP_with_EE")))
ggplot(my_data2, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(breaks=seq(0,50,by=10),limits=c(0,50)) + theme_bw(base_family = "sans") + theme_test() + ylab("Proportion of genes with PE or EE (%)") +  scale_fill_manual(values = c("gray70", "salmon","gray70","cornflowerblue")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold",angle=35, hjust=1), axis.title.y = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines"))

## % of self-binding RBP genes
Without_PE <- (64/447) * 100
With_PE <- (17/35) * 100
Without_EE <- (32/284) * 100
With_EE <- (49/198) * 100

type <- c("Without_PE","With_PE","Without_EE","With_EE")
ratio <- c(Without_PE,With_PE,Without_EE,With_EE)
my_data <- data.frame(type=type,ratio=ratio)
my_data2 <- transform(my_data, type= factor(type, levels = c("Without_PE","With_PE","Without_EE","With_EE")))
ggplot(my_data2, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(breaks=seq(0,60,by=10),limits=c(0,60)) + theme_bw(base_family = "sans") + theme_test() + ylab("Proportion of self-binding RBP genes (%)") +  scale_fill_manual(values = c("gray70", "salmon","gray70","cornflowerblue")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold",angle=35, hjust=1), axis.title.y = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines"))

###
GWN_NTC <- 76/166
PTC <- 24/102
all_NTC <- 1741/3176
type <- c("All_NTC", "GWN_NTC", "PTC")
ratio <- c(all_NTC,GWN_NTC,PTC)
my_data <- data.frame(type=type,ratio=ratio)
ggplot(my_data, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(labels = scales::percent, breaks=seq(0,0.6,by=0.2),limits=c(0,0.6)) + theme_classic() + ylab("Proportion of synonymous substitution") +  scale_fill_manual(values = c("gray","cyan4","salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"))

all_NTC <- 3176/6829
GWN_NTC <- 166/309
GWN_PTC <- 102/249
type <- c("All_NTC", "GWN_NTC", "GWN_PTC")
ratio <- c(all_NTC,GWN_NTC,GWN_PTC)
my_data <- data.frame(type=type,ratio=ratio)
ggplot(my_data, aes(x=type, y=ratio,fill=type)) + geom_bar(stat ="identity") + scale_y_continuous(labels = scales::percent, breaks=seq(0,1,by=0.2),limits=c(0,1.0)) + theme_classic() + ylab("Proportion of match position of stpcdn") +  scale_fill_manual(values = c("gray", "cyan4", "salmon")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"))

