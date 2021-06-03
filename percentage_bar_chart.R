#Drosophila
len <- c("exon(3n)", "exon(3n)", "exon(3n+1)","exon(3n+1)","exon(3n+2)","exon(3n+2)")
num <- c(11991,402,188,9208,220,9044)
group <- c("non_es","es","non_es","es","non_es","es")
my_data <- data.frame(exon_len=len,num=num,group=group)
ggplot(my_data, aes(x=exon_len, y=num, fill=group)) + geom_bar(stat = "identity", position = "fill") + scale_y_continuous(labels = scales::percent) + theme_bw(base_family = "sans") + theme_test() + ylab("Proportion of spliced exons (%) ") + xlab("Length of spliced exons") + scale_fill_manual(values = c("cornflowerblue", "gray70")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold"), plot.margin = unit(c(1, 1, 1, 4), "lines")) 

#human
len <- c("exon(3n)", "exon(3n)", "exon(3n+1)","exon(3n+1)","exon(3n+2)","exon(3n+2)")
num <- c(86346,602,57905,3388,57585,3017)
group <- c("non_es","es","non_es","es","non_es","es")
my_data <- data.frame(exon_len=len,num=num,group=group)
ggplot(my_data, aes(x=exon_len, y=num, fill=group)) + geom_bar(stat = "identity", position = "fill") + scale_y_continuous(labels = scales::percent) + theme_classic() + ylab("Proportion of exons") + xlab("Length of spliced exon") + scale_fill_manual(values = c("cyan4", "gray70")) + theme(axis.text.y= element_text(size=12.0,face="bold"), axis.text.x = element_text(size=12.0,face="bold"), axis.title.y = element_text(size =12.0, face = "bold"), axis.title.x = element_text(size =12.0, face = "bold")) 
