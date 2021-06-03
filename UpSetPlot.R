library("UpSetR")
data <- read.csv("/Users/tomoyauchiyama/AutoReg/07_pos_PE", header = TRUE)

upset(data, sets = c("triCas2","apiMel4","anoGam1","musDom2","droGri2","droAlb1","droMoj3","droVir3","droWil2","droMir2","droPer1","droPse3","droFic2","droRho2","droTak2","droKik2","droEle2","droEug2","droBip2","droAna3","droSuz1","droBia2","droEre2","droYak3","droSec1","droSim1","dm6"), keep.order = TRUE, order.by = "freq")

my_data <- data.frame(data)
my_data2 <- transform(my_data, group= factor(group, levels = c("UCE", "CE", "PE")))
ggplot(my_data2, aes(x=group, y=score, fill=group)) + geom_boxplot(width=0.6) + theme_classic() + scale_fill_manual(values = c("cyan4", "grey", "salmon")) +  ylab("phyloP score (dm6 124ways)") + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold"))

#frequency of PTC
data <- read.delim("/Users/tomoyauchiyama/AutoReg/06_pos_PTC_on_PE", header = TRUE)
my_data <- data.frame(data)
ggplot(my_data, aes(x = dis,y =..density..)) + theme_classic() +  geom_histogram(breaks=seq(0,1.0,by=0.05),colour="gray40", fill="salmon") + geom_density(adjust=0.3, colour="black",fill="grey39",alpha=.3) +  scale_x_continuous(breaks=seq(0,1.0,0.1)) +  xlab("Relative position") +  ylab("Density") + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold"))

#position- specific phastCons score (dm6 27ways)
data <- read.delim("/Users/tomoyauchiyama/AutoReg/07_pos_spe_phastCons", header = TRUE)
my_data <- data.frame(data)
ggplot(my_data, aes(x = pos,y =mean,color = group)) + theme_classic() + geom_line() +  scale_x_continuous(breaks=seq(0,1.0,0.1)) + scale_y_continuous(breaks=seq(0.6,1.0,by=0.1),limit=c(0.6,1.0)) + scale_colour_manual(values=c("gray40", "salmon")) + geom_vline(aes(xintercept=0.3),colour="gray80", linetype="dashed") +  ylab("phastCons score (dm6 27ways)") + xlab("Relative position") + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold"),legend.position = "none") + geom_text(data= subset(my_data,pos==max(pos)),aes(label=group),nudge_x = 0.04,size=5,fontface = "bold")
